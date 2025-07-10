# HASH: 1b4bd42cabf1f2a67f7ea7ec8463382399117d2fbe96e7abc5b52369103a72fc
cmd-roleban-desc = Запрещает пользователю играть на роли
# HASH: 04ef09fa77269eed6f3d343b3e9618c6189990041f8c62354d24f7719088813d
cmd-roleban-help = Использование: roleban <name or user ID> <job> <reason> [продолжительность в минутах, не указывать или 0 для навсегда]
# HASH: 4ff1b3d60c969b157ad18d0b533a4a55c072acd9de870ec3dd72ad2bf2316efc
cmd-roleban-hint-1 = <name or user ID>
# HASH: 78eb42f675ac3cfccb91f84c71f6608ce0090e9f7075dbcb846739e9e6ff3a61
cmd-roleban-hint-2 = <job>
# HASH: dc326df70e076550afb10167f30e52ed0a272ab9d70c7e111a9655220fafa1fd
cmd-roleban-hint-3 = <reason>
# HASH: 5295eeb7d96909e407390ca72f71d1f3a0d045b213f4362323959398b221cbb3
cmd-roleban-hint-4 = [продолжительность в минутах, не указывать или 0 для навсегда]
# HASH: 284fa4c0e6a7fa71c04411c29ee8a5eb8d72d33d60d1f14b3d2231e3ea4f0014
cmd-roleban-hint-5 = [severity]
# HASH: 3bb919c1f779e317f5bc75c419bc399ccb42e0aa4768e6d400e07077ff3d7490
cmd-roleban-hint-duration-1 = Навсегда
# HASH: b9897ae9a2758b0feab4c328b0b901086fcacf43b5f90f630a6e20f859d9b736
cmd-roleban-hint-duration-2 = 1 день
# HASH: 7632ab232d43bd4357ac0d56479dfdce9de302dd3f0f1220113eb129d88aa1c7
cmd-roleban-hint-duration-3 = 3 дня
# HASH: 2f4d53ae265925611a126e58a85596ffe0a548473d5607a0d91a0aae35989b49
cmd-roleban-hint-duration-4 = 1 неделя
# HASH: 95d471f226da689b30002329b63407f89e512da5552591afdcda6b579d90ce82
cmd-roleban-hint-duration-5 = 2 недели
# HASH: b7760705f59149471022ad1406a3d1b0a900912bcb4bef3cb16cc0d902097e0a
cmd-roleban-hint-duration-6 = 1 месяц
# HASH: 607fdc77567aec1f9257b384164f6651932af798fd39d6d4ce71adcb1e0b725e
cmd-roleunban-desc = Возвращает пользователю возможность играть на роли
# HASH: 688151df62df7a45fafe07bff9372aa4649c1cd9c86cfbe759076ec91f4fada6
cmd-roleunban-help = Использование: roleunban <role ban id>
# HASH: 5f14a525266c3adff83161fca25523f7a4563923638c2512beadcf53839f4184
cmd-roleunban-hint-1 = <role ban id>
# HASH: 49078093f97c31566335dcbe3b03c011e9b1c6be3ca4335aac0d1fae6ddee6f0
cmd-rolebanlist-desc = Список запретов ролей игрока
# HASH: a011883bf33192be04209f8c807e615c91151fb2aa4ff279090e34f9dfb8996b
cmd-rolebanlist-help = Использование: <name or user ID> [include unbanned]
# HASH: 4ff1b3d60c969b157ad18d0b533a4a55c072acd9de870ec3dd72ad2bf2316efc
cmd-rolebanlist-hint-1 = <name or user ID>
# HASH: b2c5be3a1c449bd12d018f0c089e53f16dda63ec74c704a1935e2718641bd737
cmd-rolebanlist-hint-2 = [include unbanned]
# HASH: 02fe939a559afdf7bad1df1a73fe42b12e931eeb84fbd9bcd6cf5818eb717567
cmd-roleban-minutes-parse = { $time } - недопустимое количество минут.\n{ $help }
# HASH: 167157f986ca55705b3978facc6017b1cf15c04d715b0358e08623986fee71ce
cmd-roleban-severity-parse = ${ severity } is not a valid severity\n{ $help }.
# HASH: d552829955bec2fa159cab560767e6d53dc0ebf80e3751d749fa58acd28f7e82
cmd-roleban-arg-count = Недопустимое количество аргументов.
# HASH: 189f883a6bfd0f27079589268aeee92086bcd7bb2f256712dcf1b0e47043842f
cmd-roleban-job-parse = Работа { $job } не существует.
# HASH: d25b464f64c56aa4b67736f19816d4fff5122346d3238d77203f2ac31c8524ff
cmd-roleban-name-parse = Невозможно найти игрока с таким именем.
# HASH: f5378a7fe8531b20a76b8d0e2e82292b9723decbee7549ccb8c3c65d105834d1
cmd-roleban-existing = { $target } уже имеет запрет на роль { $role }.
# HASH: d7df59cc2828cc27ddf1a603a7f378535ac3ebed87be37eb97f804a1612e5f6c
cmd-roleban-success = { $target } запрещено играть на роли { $role } по причине { $reason } { $length }.
# HASH: dc41b937fbd2659f47a06a29dc00330ae5d5c7c8e11926ea52db9911275ccb29
cmd-roleban-inf = навсегда
# HASH: 026628ea93abdd8a408de8a2a21f77eb9ebf582abe8ff6d3f6d3673377dbf972
cmd-roleban-until = до { $expires }
# HASH: bec5aca82676353e861dcc8de3be310688c8ee75131676bf2a2c272322090fab
# Department bans
cmd-departmentban-desc = Запрещает пользователю играть на ролях, входящих в отдел
# HASH: aadfd0c30557f9b0db3d4fe4eff23588bd4e1377b48c2b190d2eff5d42184f77
cmd-departmentban-help = Использование: departmentban <name or user ID> <department> <reason> [продолжительность в минутах, не указывать или 0 для навсегда]
# HASH: e4170607bb3a6b93a6d72c885b098bc910ae9e7cee0c8991120b8e95e6cb23db
cmd-roleunban-unable-to-parse-id =
    Unable to parse { $id } as a ban id integer.
    { $help }
