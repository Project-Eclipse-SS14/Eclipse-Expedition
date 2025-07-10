# HASH: c0a670e76154808fc11d278e593ba0ec515b2e542a2f7d6ab813581eb37af82d
# ban
cmd-ban-desc = Банит кого-либо
# HASH: 1ae0459c93d8b018facfca83114b2370a873ed120230e6f4f9b24da74e047834
cmd-ban-help = Использование: ban <name or user ID> <reason> [продолжительность в минутах, без указания или 0 для пермабана]
# HASH: d25b464f64c56aa4b67736f19816d4fff5122346d3238d77203f2ac31c8524ff
cmd-ban-player = Не удалось найти игрока с таким именем.
# HASH: 0af918fd6b3cee9c10f4abd55298c0a041f3abfeda9d592a7b7d67d441ac492d
cmd-ban-invalid-minutes = { $minutes } не является допустимым количеством минут!
# HASH: 3eb6753ed61d6bd9f1c89b87b3b7068563a9df0cf80f4171e51aca65cf5e1b9d
cmd-ban-invalid-severity = { $severity } не является допустимой тяжестью!
# HASH: f14edae6be1a0c4b2b0f730334615daa61810ce4d67c033683a0ec1bc045d1e3
cmd-ban-invalid-arguments = Недопустимое число аргументов
# HASH: 3743e03374494bb2af374386e131dad55620878ec477c7db4d1639f542b0a2a7
cmd-ban-hint = <name/user ID>
# HASH: dc326df70e076550afb10167f30e52ed0a272ab9d70c7e111a9655220fafa1fd
cmd-ban-hint-reason = <reason>
# HASH: 284fa4c0e6a7fa71c04411c29ee8a5eb8d72d33d60d1f14b3d2231e3ea4f0014
cmd-ban-hint-severity = [severity]
# HASH: 035491756611c30f3886255f53a88536e968cea2d004f5b954b57c9c4c5dfef6
cmd-ban-hint-duration = [продолжительность]
# HASH: 3bb919c1f779e317f5bc75c419bc399ccb42e0aa4768e6d400e07077ff3d7490
cmd-ban-hint-duration-1 = Навсегда
# HASH: b9897ae9a2758b0feab4c328b0b901086fcacf43b5f90f630a6e20f859d9b736
cmd-ban-hint-duration-2 = 1 день
# HASH: 7632ab232d43bd4357ac0d56479dfdce9de302dd3f0f1220113eb129d88aa1c7
cmd-ban-hint-duration-3 = 3 дня
# HASH: 2f4d53ae265925611a126e58a85596ffe0a548473d5607a0d91a0aae35989b49
cmd-ban-hint-duration-4 = 1 неделя
# HASH: 95d471f226da689b30002329b63407f89e512da5552591afdcda6b579d90ce82
cmd-ban-hint-duration-5 = 2 недели
# HASH: a364d2132c06722b8b6b433638a49fbd49a76f9f0b7124fb5a7f5169bddec441
# ban panel
cmd-banpanel-desc = Открыть панель банов
# HASH: b398cf6c039511d9c9935d82be8d2a928bd91aecc6eab4406997be008db1ce8c
cmd-banpanel-help = Использование: banpanel [имя или guid игрока]
# HASH: e622474c66acbbc8cb24f5e316d177b38337301e1ecd4fcdb09dbf59a5e3efb8
cmd-banpanel-server = Это не может быть использовано через консоль сервера
# HASH: a9512036cc87d560dae48e774e794aad47ee627f6a960e9e7499cbd56f2517e4
cmd-banpanel-player-err = Указанный игрок не может быть найден
# HASH: b7760705f59149471022ad1406a3d1b0a900912bcb4bef3cb16cc0d902097e0a
cmd-ban-hint-duration-6 = 1 месяц
# HASH: a6f4e275d5c206f7c305e6f3571d535c69e71fc4bb5daf0fa0e806c272cdd2ce
# listbans
cmd-banlist-desc = Список активных банов пользователя.
# HASH: 03e8f91eaf8bef72e9f6a3b16dcca92c740206bfbc408dd8cabf9017b4db3c53
cmd-banlist-help = Использование: banlist <name or user ID>
# HASH: 189d0378bfa2cff8a727a36f3cf453b0a144a0330390e0352b9797aad4cb1b5a
cmd-banlist-empty = Нет активных банов у пользователя { $user }
# HASH: 718edbfbb5225320f648ebc71dd02ae92ee51a54e34b18d0e3576f910e295245
cmd-ban_exemption_update-desc = Установить исключение на типы банов игрока.
# HASH: cf153ad3c09c1357c7a6f890f3c9b88e5555d50c8e59bd100be53c4ad9ca1471
cmd-ban_exemption_update-help =
    Использование: ban_exemption_update <player> <flag> [<flag> [...]]
    Укажите несколько флагов, чтобы дать игроку исключение из нескольких типов банов.
    Чтобы удалить все исключения, выполните эту команду и укажите единственным флагом "None".
# HASH: b12bfc8aa40c624106238aad8b685434b50dc7d9e3d7e11ea931cb04c397c6da
cmd-ban_exemption_update-nargs = Ожидалось хотя бы 2 аргумента
# HASH: 37f2eb7c7fc2f6ee5c0a2afe3de6ca46f019fca01b3dd358b5375ed0bd801121
cmd-ban_exemption_update-locate = Не удалось найти игрока '{ $player }'.
# HASH: 50650660b2d71edbd9b67c523bb6036f5698e7217e1ae441b3e9f796962b7a13
cmd-ban_exemption_update-invalid-flag = Недопустимый флаг '{ $flag }'.
# HASH: 1de02d4f0c01e89680158dc56b2a713f5d6dbc32560f265a173ead5794213e6a
cmd-ban_exemption_update-success = Обновлены флаги исключений банов для '{ $player }' ({ $uid }).
# HASH: b06d24d8e2a8a215ff24a658659470858c21180af549ff3d4ec8c76937aea059
cmd-ban_exemption_update-arg-player = <player>
# HASH: 7d199143b1009b8bfa4bd16c1c74885f335a024cd25c912fcef3418c53d23192
cmd-ban_exemption_update-arg-flag = <flag>
# HASH: 783e97a2ff5d781c2b1a9a09a3943a43bd8ce9a6566320ac3f4fce50bf8b3527
cmd-ban_exemption_get-desc = Показать исключения банов для определённого игрока.
# HASH: 026415f9ea00c846ddb087e8e316abfe335d083892bd3116001a82a4084ccb54
cmd-ban_exemption_get-help = Использование: ban_exemption_get <player>
# HASH: 607b73099da447192ab19e35834acd6d9ba73738062bdb761725e61ed30e5bb1
cmd-ban_exemption_get-nargs = Ожидался ровно 1 аргумент
# HASH: 518db265ddf4b714ce81165f2fa307f6535ea720b7cc0037a32b97d2f23275f4
cmd-ban_exemption_get-none = Пользователь не имеет исключений от банов.
# HASH: 81313234764a6314433ddda1f70b2ce73125acae48ff42298d8db078bdc4ca02
cmd-ban_exemption_get-show = Пользователь исключён из банов со следующими флагами: { $flags }.
# HASH: ffdeba473e9c3db16f86114504834a1c67397a910e91699f23ccefcaae753fd8
# Ban panel
ban-panel-title = Панель банов
# HASH: fc9d4c93e981ecef9a99521f1834d51bfced9ab590ec90fc72a161df358ea7c7
ban-panel-player = Игрок
# HASH: fb399f842ad14e5c7700f8ccddf9f0515ecf936d89e369e488804bb865538fe0
ban-panel-ip = IP
# HASH: 3f8f4e63d6b973179652830e3bdbab8258ad2a0ca74df24b36638d386afde807
ban-panel-hwid = HWID
# HASH: 1b07115c3460c42312144c05b5c26b40a9be480f1b7989bd614a95a307982b30
ban-panel-reason = Причина
# HASH: 0b9276926779dd89504a6632a9c50ca605610daf9354c45ad43f5886821874d7
ban-panel-last-conn = Использовать IP и HWID с последнего подключения?
# HASH: 9750e7f3fd7b2c956c836b7292f725c5a2319a0de0903c34edef520704afd52c
ban-panel-submit = Забанить
# HASH: 99be984611e7e082a8f382aef96a2b8f127b997995a1a2a9c309247e8e03bcbe
ban-panel-confirm = Уверены?
# HASH: 5fd13f1b72640351f4eb5659c06c4d5c4818fe87599cfb070b0433f1df385793
ban-panel-tabs-basic = Основная инфа
# HASH: 1b07115c3460c42312144c05b5c26b40a9be480f1b7989bd614a95a307982b30
ban-panel-tabs-reason = Причина
# HASH: 42fc54f083c64d00931b13b8da6dad465833adbb7645d7f44a5990a5b7fe0e89
ban-panel-tabs-players = Список игроков
# HASH: 46782b884df2ad9405fa183cc779fd7d59d8ac39042a59eeceeddfa66644de49
ban-panel-tabs-role = Инфо о банах ролей
# HASH: 27b0aefc0fef4af99a34288033ae2393d5806a437216950a3e2406a478ef2658
ban-panel-no-data = Укажите пользователя, IP или HWID чтобы забанить
# HASH: 1768e46f24678fda38c393309cfd0f4f316b97b02db4b3f6d4ae20a26e13d0e8
ban-panel-invalid-ip = Не удаётся спарсить IP адрес. Попробуйте ещё раз
# HASH: 3882e152fa2a91b7ace5da92276342e787eaf444c11c0eb3c214938b92a9f594
ban-panel-select = Выбрать тип
# HASH: 517a11991eeab1e6fb9f93aa99ca02754efd410a8628d5c1710c2541b059e729
ban-panel-server = Серверный бан
# HASH: 8e017bfe1c37d824e49e9bdaf64736905d72a97103ee0ec007203a6714cd2d17
ban-panel-role = Бан роли
# HASH: afdf54f5e75f43f260113e27bd6a968bb41aee9c40d23fddc371cd8ba2677f82
ban-panel-minutes = Минут
# HASH: a053fe92500e36c39bbb81dfafbea58427ce691ef1bdf315afab1ab8bdd141ab
ban-panel-hours = Часов
# HASH: 74faa41d0ea08b242a114b3e3806789d8fcfcd486152f13844dd27c3ade9e0c1
ban-panel-days = Дней
# HASH: 320ba6958d837cb41628800874b6f1395711b47fd93b28cb58f72a0c1a3d2f70
ban-panel-weeks = Недель
# HASH: 245459ae2402aec558399b68e8d6aa54a5f38a32f1f9a65e3b4b7bdabb58b8e7
ban-panel-months = Месяцев
# HASH: 828921b5ff3c3566723ce191c95236ae614b71c99a28b85d94b78a0ffeca0619
ban-panel-years = Лет
# HASH: 3bb919c1f779e317f5bc75c419bc399ccb42e0aa4768e6d400e07077ff3d7490
ban-panel-permanent = Постоянный
# HASH: 0690b4c720ebab80dc0e9ca02d8736fb68bdb18278b3e39d3da924b0ebf6e87f
ban-panel-ip-hwid-tooltip = Оставьте пустым и установите флажок ниже, чтобы использовать данные последнего подключения
# HASH: 011a0f58de8552fca460162ac51e58108cbdff78bfc3ac0a6b01eaed4cf64ee8
ban-panel-severity = Тяжесть:
# HASH: b328bcb363d2acba28c7e0bc7d21fee96b01c8c8dbad37baf6fea8863b141790
# Ban string
server-ban-string = { $admin } created a { $severity } severity server ban that expires { $expires } for [{ $name }, { $ip }, { $hwid }], with reason: { $reason }
# HASH: 4ee7c345c13bff8d751a56651573580fd3857bbebfd333f9910115b857c0aca1
ban-panel-erase = Стереть сообщения в чате и игрока из раунда
# HASH: c6ba2eed61798bc26bf4d66a38751dfd82e7972a521e8e224b5c1cf9bb002a8d
server-ban-string-never = никогда
# HASH: 451d66e242eaedcd246e495b817445a466ae0388e57d461b67384d06f8370d77
server-ban-string-no-pii = { $admin } установил серверный бан { $severity } тяжести, который истечёт { $expires } у { $name } с причиной: { $reason }
# HASH: b06d24d8e2a8a215ff24a658659470858c21180af549ff3d4ec8c76937aea059
cmd-ban_exemption_get-arg-player = <player>
# HASH: 2c88ab6d03db19ef6cf8da3c48f145bfdb54dafaf9048200ab3d039ec9266d35
# Kick on ban
ban-kick-reason = Вы были забанены
# HASH: 3743e03374494bb2af374386e131dad55620878ec477c7db4d1639f542b0a2a7
cmd-banlist-hint = <name/user ID>
