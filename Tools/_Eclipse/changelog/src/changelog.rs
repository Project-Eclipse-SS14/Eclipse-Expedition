use chrono::{DateTime, Utc};
use yaml_rust2::{Yaml, yaml::Hash};

#[derive(Debug)]
pub struct Changelog {
    /// The name to use for this changelog.
    /// If left unspecified, the name of the file is used instead.
    /// Used during localization to find the user-displayed name of this changelog.
    pub name: Option<String>,

    pub entries: Vec<ChangelogEntry>,

    /// Whether or not this changelog will be displayed as a tab to non-admins.
    /// These are still loaded by all clients, but not shown if they aren't an admin,
    /// as they do not contain sensitive data and are publicly visible on GitHub.
    pub admin_only: bool,

    /// Used when ordering the changelog tabs for the user to see.
    /// Larger numbers are displayed later, smaller numbers are displayed earlier.
    pub order: u32,
}

impl Changelog {
    pub fn parse(yaml: &Yaml) -> Self {
        let map = yaml
            .as_hash()
            .expect("Changelog document is not a structure");
        let name = map.get(&Yaml::String(String::from("Name"))).map(|v| {
            v.as_str()
                .expect("Changelog: Name is not a string")
                .to_owned()
        });
        let entries = map
            .get(&Yaml::String(String::from("Entries")))
            .map(|v| {
                v.as_vec()
                    .expect("Changelog: Entries is not an array")
                    .iter()
                    .map(|v| ChangelogEntry::parse(v))
                    .collect::<Vec<_>>()
            })
            .unwrap_or_default();
        let admin_only = map
            .get(&Yaml::String(String::from("AdminOnly")))
            .map(|v| {
                v.as_bool()
                    .expect("Changelog: Name is not a boolean")
                    .to_owned()
            })
            .unwrap_or(false);
        let order = map
            .get(&Yaml::String(String::from("Order")))
            .map(|v| {
                v.as_i64()
                    .expect("Changelog: Name is not an integer")
                    .to_owned()
            })
            .unwrap_or(0) as u32;
        Self {
            name,
            entries,
            admin_only,
            order,
        }
    }

    pub fn to_yaml(&self) -> Yaml {
        let mut map = Hash::new();

        if self.admin_only {
            map.insert(
                Yaml::String(String::from("AdminOnly")),
                Yaml::Boolean(self.admin_only),
            );
        }
        map.insert(
            Yaml::String(String::from("Entries")),
            Yaml::Array(self.entries.iter().map(|v| v.to_yaml()).collect()),
        );
        if let Some(s) = &self.name {
            map.insert(Yaml::String(String::from("Name")), Yaml::String(s.clone()));
        }
        if self.order != 0 {
            map.insert(
                Yaml::String(String::from("Order")),
                Yaml::Integer(self.order as i64),
            );
        }

        Yaml::Hash(map)
    }
}

#[derive(Debug)]
pub struct ChangelogEntry {
    pub id: u32,
    pub author: String,
    pub time: DateTime<Utc>,
    pub changes: Vec<ChangelogChange>,
    pub url: Option<String>,
}

impl ChangelogEntry {
    pub fn parse(yaml: &Yaml) -> Self {
        let map = yaml.as_hash().expect("Changelog entry is not a structure");

        let id = map
            .get(&Yaml::String(String::from("id")))
            .map(|v| {
                v.as_i64()
                    .expect("Changelog entry: id is not an integer")
                    .to_owned()
            })
            .expect("Changelog entry: id is not set") as u32;
        let author = map
            .get(&Yaml::String(String::from("author")))
            .map(|v| {
                v.as_str()
                    .expect("Changelog entry: author is not a string")
                    .to_owned()
            })
            .expect("Changelog entry: author isn't set");
        let time = map
            .get(&Yaml::String(String::from("time")))
            .map(|v| {
                v.as_str()
                    .expect("Changelog entry: time is not a string")
                    .to_owned()
            })
            .expect("Changelog: time isn't set")
            .parse()
            .expect("Changelog entry: Failed to parse time");
        let changes = map
            .get(&Yaml::String(String::from("changes")))
            .map(|v| {
                v.as_vec()
                    .expect("Changelog entry: changes is not an array")
                    .iter()
                    .map(|v| ChangelogChange::parse(v))
                    .collect::<Vec<_>>()
            })
            .unwrap_or_default();
        let url = map.get(&Yaml::String(String::from("url"))).map(|v| {
            v.as_str()
                .expect("Changelog entry: url is not a string")
                .to_owned()
        });
        Self {
            id,
            author,
            time,
            changes,
            url,
        }
    }

    pub fn to_yaml(&self) -> Yaml {
        let mut map = Hash::new();

        map.insert(
            Yaml::String(String::from("author")),
            Yaml::String(self.author.clone()),
        );
        map.insert(
            Yaml::String(String::from("changes")),
            Yaml::Array(self.changes.iter().map(|v| v.to_yaml()).collect()),
        );
        map.insert(
            Yaml::String(String::from("id")),
            Yaml::Integer(self.id as i64),
        );
        map.insert(
            Yaml::String(String::from("time")),
            Yaml::String(
                self.time
                    .to_rfc3339_opts(chrono::SecondsFormat::Micros, false),
            ),
        );
        if let Some(url) = &self.url {
            map.insert(Yaml::String(String::from("url")), Yaml::String(url.clone()));
        }

        Yaml::Hash(map)
    }
}

#[derive(Debug)]
pub struct ChangelogChange {
    pub ty: ChangelogChangeType,
    pub message: String,
}

impl ChangelogChange {
    pub fn parse(yaml: &Yaml) -> Self {
        let map = yaml.as_hash().expect("Changelog change is not a structure");

        let ty = map
            .get(&Yaml::String(String::from("type")))
            .map(|v| {
                v.as_str()
                    .expect("Changelog change: type is not a string")
                    .to_owned()
            })
            .expect("Changelog change: type isn't set");
        let ty = match ty.as_str() {
            "Add" => ChangelogChangeType::Add,
            "Remove" => ChangelogChangeType::Remove,
            "Fix" => ChangelogChangeType::Fix,
            "Tweak" => ChangelogChangeType::Tweak,
            _ => panic!("Encountered unknown changelog type: {}", ty),
        };
        let message = map
            .get(&Yaml::String(String::from("message")))
            .map(|v| {
                v.as_str()
                    .expect("Changelog change: message is not a string")
                    .to_owned()
            })
            .expect("Changelog change: message isn't set");

        Self { ty, message }
    }

    pub fn to_yaml(&self) -> Yaml {
        let mut map = Hash::new();

        map.insert(
            Yaml::String(String::from("message")),
            Yaml::String(self.message.clone()),
        );

        map.insert(
            Yaml::String(String::from("type")),
            Yaml::String(String::from(match self.ty {
                ChangelogChangeType::Add => "Add",
                ChangelogChangeType::Remove => "Remove",
                ChangelogChangeType::Fix => "Fix",
                ChangelogChangeType::Tweak => "Tweak",
            })),
        );

        Yaml::Hash(map)
    }
}

#[derive(Debug)]
pub enum ChangelogChangeType {
    Add,
    Remove,
    Fix,
    Tweak,
}
