use std::{
    io::{Read, Seek, SeekFrom},
    path::Path,
};

use regex::Regex;
use unicode_bom::Bom;
use yaml_rust2::{YamlEmitter, YamlLoader};

use crate::changelog::{Changelog, ChangelogChange, ChangelogChangeType, ChangelogEntry};

mod changelog;

const HEADER_REGEX: &str = r#"(?m)^\s*(?::cl:|🆑) *([a-z0-9_\-, ]+)?"#;
const ENTRY_REGEX: &str = r#"(?m)^ *[*-]? *(add|remove|tweak|fix): *([^\n\r]+)\r?$"#;
const COMMENT_REGEX: &str = r#"<!--[\S\s]*?-->"#;

#[tokio::main]
async fn main() {
    let changelog_path_str =
        std::env::var("CHANGELOG_PATH").expect("CHANGELOG_PATH env variable isn't set");
    let changelog_path = Path::new(&changelog_path_str);

    let token = std::env::var("GITHUB_TOKEN").expect("GITHUB_TOKEN env variable isn't set");

    let mut changelog = {
        if std::fs::exists(changelog_path).expect("Failed to check if changelog file exists") {
            let mut file =
                std::fs::File::open(changelog_path).expect("Failed to open changelog file");

            let bom = Bom::from(&mut file);

            file.seek(SeekFrom::Start(bom.len() as u64))
                .expect("File seek failed");

            let mut s = String::new();
            file.read_to_string(&mut s)
                .expect("Failed to read changelog file");

            Changelog::parse(&YamlLoader::load_from_str(&s).expect("Yaml parsing failed")[0])
        } else {
            Changelog {
                name: None,
                entries: Vec::new(),
                admin_only: false,
                order: 0,
            }
        }
    };

    let repository =
        std::env::var("GITHUB_REPOSITORY").expect("GITHUB_REPOSITORY env variable isn't set");
    let (owner, repo) = repository
        .split_once('/')
        .expect("GITHUB_REPOSITORY isn't in {owner}/{repo_name} format");
    let pr_number = std::env::var("PR_NUMBER").expect("PR_NUMBER env variable isn't set");

    let octocrab = octocrab::instance()
        .user_access_token(token)
        .expect("Failed to authorize using github token");
    let pr = octocrab
        .pulls(owner, repo)
        .get(
            pr_number
                .parse()
                .expect("Failed to parse PR_NUMBER to a number"),
        )
        .await
        .expect("PR fetch failed");

    let body = pr.body.expect("PR has no body");

    let body = Regex::new(COMMENT_REGEX).unwrap().replace_all(&body, "");

    let Some(header_captures) = Regex::new(HEADER_REGEX).unwrap().captures(&body) else {
        println!("No changelog entry found.");
        return;
    };

    let cl_body = body.split_at(header_captures.get(0).unwrap().end() - 1).1;

    let mat = header_captures.get(1);
    let author = if let Some(mat) = mat {
        mat.as_str()
    } else {
        &pr.user
            .expect("No author specified and no PR author found")
            .login
    };
    let author = author.trim();

    let changes: Vec<ChangelogChange> = Regex::new(ENTRY_REGEX)
        .unwrap()
        .captures_iter(&cl_body)
        .map(|v| v.extract())
        .map(|(_, [ty, message])| ChangelogChange {
            ty: match ty.to_lowercase().as_str() {
                "add" => ChangelogChangeType::Add,
                "remove" => ChangelogChangeType::Remove,
                "fix" => ChangelogChangeType::Fix,
                "tweak" => ChangelogChangeType::Tweak,
                _ => unreachable!(),
            },
            message: message.to_owned(),
        })
        .collect();

    let time = pr.merged_at.expect("PR merged_at is not set");

    changelog.entries.push(ChangelogEntry {
        id: changelog.entries.iter().map(|v| v.id).max().unwrap_or(0),
        author: author.to_owned(),
        time,
        changes,
        url: pr.url,
    });

    let yaml = changelog.to_yaml();

    let mut out_str = String::new();
    let mut emitter = YamlEmitter::new(&mut out_str);
    emitter.dump(&yaml).unwrap();

    std::fs::write(changelog_path, out_str).expect("Failed to write updated changelog");
}
