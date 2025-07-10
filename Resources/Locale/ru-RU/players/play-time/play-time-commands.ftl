# HASH: f337759972962c7bbbd98b487da5c68a8b5c6936b7dd5936b589c01f4a2ea266
parse-minutes-fail = Не удалось спарсить '{ $minutes }' как минуты
# HASH: 31ff31801ad64c14fdb5540667a316df97fdbd1340f672bf17ff555dd671fd15
parse-session-fail = Не найдена сессия для '{ $username }'
# HASH: f18b013d89c617af90daf813b8db5f84763a41dac2372b87804249500adbf895
# - playtime_addoverall
cmd-playtime_addoverall-desc = Добавляет указанное число минут к общему игровому времени игрока
# HASH: 7ff53531b210552e731834c5e2a48cf3287f78e6150f9d3550668a701665c407
cmd-playtime_addoverall-help = Использование: { $command } <user name> <minutes>
# HASH: 880cc916c510c989ea0f41fbf8bd4adc8479ae0802159f8ae402176f30de8c6f
cmd-playtime_addoverall-succeed = Общее игровое время { $username } увеличено на { TOSTRING($time, "dddd\\:hh\\:mm") }.
# HASH: dc7b693292f657bef85c312421d7b01575b9dcd1d3eca6430a8d0ed56c0aa6b8
cmd-playtime_addoverall-arg-user = <user name>
# HASH: a767771ae3e60c1ff813b821b0ab50370e379ca4925e0b541e72ea9b389181c4
cmd-playtime_addoverall-arg-minutes = <minutes>
# HASH: d653ae8991266ade10f9fd1257dd4171baa970951577672216af9abfc8055dfb
cmd-playtime_addoverall-error-args = Ожидается ровно два аргумента
# HASH: ac4cb4fdba38c8999a170d3e5dc4154ee1fc301df665ab38ad38c7421484651d
# - playtime_addrole
cmd-playtime_addrole-desc = Добавляет указанное число минут к времени игрока на определённой роли
# HASH: 9da8f61fcde2fb2611f01d22dce700c6c74dedcab7556c389bbfc7f00f8c5ca4
cmd-playtime_addrole-help = Использование: { $command } <user name> <role> <minutes>
# HASH: cbef7605100517c09ca57d1bed6e89147ff2e924643ea0183524a1182b5b6fe5
cmd-playtime_addrole-succeed = Игровое время для { $username } / \'{ $role }\' увеличено на { TOSTRING($time, "dddd\\:hh\\:mm") }.
# HASH: dc7b693292f657bef85c312421d7b01575b9dcd1d3eca6430a8d0ed56c0aa6b8
cmd-playtime_addrole-arg-user = <user name>
# HASH: 874ae23cccc69c49eacad23337eed3196c1c345e6373c445af7dd1f11db08c4e
cmd-playtime_addrole-arg-role = <role>
# HASH: a767771ae3e60c1ff813b821b0ab50370e379ca4925e0b541e72ea9b389181c4
cmd-playtime_addrole-arg-minutes = <minutes>
# HASH: 98e032ad1e9e7fbd96657cd352005534e8ad345e1de4bc6bc14226fa30bb8360
cmd-playtime_addrole-error-args = Ожидается ровно три аргумента
# HASH: 408cdae0a5bdb58a780d4b66ec800b348d9d9a9e812362a5b57017c6f3d2f3aa
# - playtime_getoverall
cmd-playtime_getoverall-desc = Получить общее игровое время игрока в минутах
# HASH: 3a3504556784f729b36cc8586f107bb9b4c30c927b636a264e999c32a2ebcc59
cmd-playtime_getoverall-help = Использование: { $command } <user name>
# HASH: d5a0c43ec6ff9c836c97d5998191e8dac938b9337e8c716b186a35b76bd9da31
cmd-playtime_getoverall-success = Общее игровое время { $username } составляет { TOSTRING($time, "dddd\\:hh\\:mm") }.
# HASH: dc7b693292f657bef85c312421d7b01575b9dcd1d3eca6430a8d0ed56c0aa6b8
cmd-playtime_getoverall-arg-user = <user name>
# HASH: 5eeaf0c29ac6a141f613bc940eeedf2f0d2bc4bdf9b2fb44ef5893031f44fcf4
cmd-playtime_getoverall-error-args = Ожидается ровно один аргумент
# HASH: 8291409d01924006944103773942f37c42bbb6cfa826e666e5af31718225f91c
# - GetRoleTimer
cmd-playtime_getrole-desc = Получает все или один таймер роли от игрока
# HASH: 20186932dd8bfef570b545630d20d534511a06ed7c3cd280933f172cf4a545df
cmd-playtime_getrole-help = Использование: { $command } <user name> [role]
# HASH: 2ab7d09d539047e9400eee12815f247eea8a572827048c09c3856cfad2bcbacc
cmd-playtime_getrole-no = Таймеров ролей не найдено
# HASH: 33a1242f838cdba047d452ecd636c6070734d3cc68a53a79cc3331d78fdc76d7
cmd-playtime_getrole-role = Роль: { $role }, игровое время: { $time }
# HASH: 0c652a95234f60d2e88063632a1f6b3a194c27d85dafda811649ebde0324c20d
cmd-playtime_getrole-overall = Общее игровое время { $time }
# HASH: a450474f4a2d0f1b46051dd6b1e9e333a2264218849f8efd9ba05d128ce0803c
cmd-playtime_getrole-succeed = Игровое время { $username } составляет: { TOSTRING($time, "dddd\\:hh\\:mm") }.
# HASH: dc7b693292f657bef85c312421d7b01575b9dcd1d3eca6430a8d0ed56c0aa6b8
cmd-playtime_getrole-arg-user = <user name>
# HASH: b71955deaafb03e61e8769bb07c6e3a8914c169f0609c93f2a311f398b60a5dc
cmd-playtime_getrole-arg-role = <role|'Overall'>
# HASH: 6f45fcb78b9eef961bea13db037696f6ee0bb893bdfa4bca719ed8fb2fc63eef
cmd-playtime_getrole-error-args = Ожидается ровно один или два аргумента
# HASH: 6197d62ce78cdf2e7a59933aed6463b51979e71517c4a2bcc6998950a3c90647
# - playtime_save
cmd-playtime_save-desc = Сохранение игрового времени игрока в БД
# HASH: 3a3504556784f729b36cc8586f107bb9b4c30c927b636a264e999c32a2ebcc59
cmd-playtime_save-help = Использование: { $command } <user name>
# HASH: b6ef07a1ec45dc94c393e15f7d701686a355fdaf7054ab624dc192f2524f3aa9
cmd-playtime_save-succeed = Игровое время { $username } сохранено
# HASH: dc7b693292f657bef85c312421d7b01575b9dcd1d3eca6430a8d0ed56c0aa6b8
cmd-playtime_save-arg-user = <user name>
# HASH: 5eeaf0c29ac6a141f613bc940eeedf2f0d2bc4bdf9b2fb44ef5893031f44fcf4
cmd-playtime_save-error-args = Ожидается ровно один аргумент
# HASH: 5ca16de588172c4985da1e70e7e44cfff6efe38191f896b85a00309a3fecd067
cmd-playtime_flush-desc = Записывает активные трекеры в хранение отслеживании игрового времени.
# HASH: 433f2cc1f1a8d2f82b6c782b13a111d57477de026826f236594437379206298d
cmd-playtime_flush-help =
    Использование: { $command } [user name]
    Это вызывает запись только во внутреннее хранилище, при это не записывая немедленно в БД.
    Если пользователь передан, то только этот пользователь будет обработан.
# HASH: 4ffc15adf6cff7f7fc64372ece33fe3874de0aa31113171479d7205d18b17b9a
cmd-playtime_flush-error-args = Ожидается ноль или один аргумент
# HASH: 1f950b96ba3e043d6a430170a28e8d35af2ca3bd82cadd4e36148bfc044f1c89
cmd-playtime_flush-arg-user = [user name]
