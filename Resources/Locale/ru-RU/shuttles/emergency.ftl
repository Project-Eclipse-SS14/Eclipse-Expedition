# HASH: b9e825770f8687f4855dbcf23871341334d95718f9abfefaf32f81137688e7a6
emergency-shuttle-command-round-yes = Раунд продлён.
# HASH: e3d731630b7e7f2b04c879446126e7f801fb030a6c521825ff183f5cf9cbebc0
emergency-shuttle-command-round-no = Невозможно продлить окончание раунда.
# HASH: 405f11c37ffbc545ec4149eda1155484bfa67ff18ae26a1862429798f2dc854a
# Emergency shuttle
emergency-shuttle-left = Эвакуационный шаттл покинул станцию. Расчётное время прибытия шаттла на станцию Центкома - { $transitTime } секунд.
# HASH: 6e1cf8f511ef6028fed97b840e5fc5f4aa7008b67229516da2351a7788cd9fc0
emergency-shuttle-launch-time = Эвакуационный шаттл будет запущен через { $consoleAccumulator } секунд.
# HASH: 7999de69b8bd0dfa8140d3c157ef0f1069aeb4325d362ad66f487cf911bf8ae7
emergency-shuttle-docked = Эвакуационный шаттл пристыковался к станции { $location }, направление: { $direction }. Он улетит через { $time } секунд.{ $extended }
# HASH: a2d9cd643a58478b4da981527bd694293920dc643e3a8b54ecd9df0118ba26b5
emergency-shuttle-good-luck = Эвакуационный шаттл не может найти станцию. Удачи.
# HASH: 3a66fa28ca61ce9782a0343aad42484cc003d15a0b27bce135520126be451046
emergency-shuttle-nearby = Эвакуационный шаттл не может найти подходящий стыковочный шлюз. Он дрейфует около станции, { $location }, направление: { $direction }. Он улетит через { $time } секунд.{ $extended }
# HASH: a938db53efca5944672d751a84462339b4f9a6a0fa4e95c8308f9599996d2697
emergency-shuttle-extended = { " " }Время до запуска было продлено в связи с непредвиденными обстоятельствами.
# HASH: f474e500022c9540e9089be96b3762eb620eb44c1c9cd9016ce8ee60e8c560ac
# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = Досрочный запуск отключён
# HASH: 74d567a896a54d3ffdb8afbe90b13210254c1303a59b9bc174a2ad3453d7efb4
emergency-shuttle-console-auth-left =
    { $remaining } { $remaining ->
        [one] авторизация осталась
        [few] авторизации остались
       *[other] авторизации остались
    } для досрочного запуска шаттла.
# HASH: aee693c8e1e366a918708c3b80ce715bf15472b5f427750cb82d0c881acfcf1f
emergency-shuttle-console-auth-revoked =
    Авторизации на досрочный запуск шаттла отозваны, { $remaining } { $remaining ->
        [one] авторизация необходима
        [few] авторизации необходимы
       *[other] авторизации необходимы
    }.
# HASH: 07c4245c4718ff0f7c894cecf8eb657b6836acb639e3bebc24b4b89182bd8fbf
emergency-shuttle-console-denied = Доступ запрещён
# HASH: 4058eca31a406f93d1da29a8a0b08b1a253b2e47c5b33bef66c09061ac7a7fae
# UI
emergency-shuttle-console-window-title = Консоль эвакуационного шаттла
# HASH: a1cfff864d03eba0b7698ca8aeed207bffb0fc10ce2a5808dc0375d84bb9d791
emergency-shuttle-ui-engines = ДВИГАТЕЛИ:
# HASH: 93ea98ea4bd1d5dded7f46644b611695df14d42a9a4371bc421baffb3908b43c
emergency-shuttle-ui-idle = Простой
# HASH: f16e326b0021ca80ca9c509ffa13777f005d362b8a7def29e9e21acf00ecefd9
emergency-shuttle-ui-repeal-all = Повторить всё
# HASH: 3bccbce9699bed6f62c32059d5826b75c7d8c53cb5d574f3dd2bc9e8ac015528
emergency-shuttle-ui-early-authorize = Разрешение на досрочный запуск
# HASH: 85915e6702b94d60b716f61ffa926e7c922adf6b20cc6a7ff9bb01ceb72de0e6
emergency-shuttle-ui-authorize = АВТОРИЗОВАТЬСЯ
# HASH: 2586a8c0273ed1280b52bb6bb291907c66734b9ad5985a567246d08027ca63c2
emergency-shuttle-ui-repeal = ПОВТОРИТЬ
# HASH: c452216718460e4579f434736edc58ad56fa8918c930eedc31d74b054032cefa
emergency-shuttle-ui-authorizations = Авторизации
# HASH: edf4d97c1baf8dc9ac4f11f6890fdb5a99d2cc75d70075e2b1f491ff67ad8cdd
emergency-shuttle-ui-remaining = Осталось: { $remaining }
# HASH: 4f0fe4764758a7cf1a8b28c7551f71e67ea8a39bfd253f00e4fa6c8625a7edce
# Map Misc.
map-name-centcomm = Центральное Командование
# HASH: 301d033fdc636642d56f99d7fd1bdb4d5183b0b6284970fd44d86777302af3f9
map-name-terminal = Терминал прибытия
# HASH: 56bd5e71d496bd79f13dede067f8c25c693293096b6215cc5d51522da32657ae
cmd-delayroundend-desc = Stops the timer that ends the round when the emergency shuttle exits hyperspace.
# HASH: 2155365d4df024ce71fbb59a1fa563108faba3d981d1ab8c71f105adccfc9414
cmd-delayroundend-help = Usage: delayroundend
# HASH: 01109d0849e4d08ee9b14238a3c2411441d9d994bf8dd932b1d2cd5233b6ae7c
cmd-dockemergencyshuttle-desc = Calls the emergency shuttle and docks it to the station... if it can.
# HASH: 7aff7de6baa766998c14d3e1fea3553fe611e5744eb9b09588548c1bba3f82f6
cmd-dockemergencyshuttle-help = Usage: dockemergencyshuttle
# HASH: 4ddb2fa06067cf6d51058478291fbfe5873a0eb7ddc09ce970ef4f708d133436
cmd-launchemergencyshuttle-desc = Early launches the emergency shuttle if possible.
# HASH: 997b4fd1cb87ac56d3362b2cc41d25d95830e7bf89979f17bd1c21244f945370
cmd-launchemergencyshuttle-help = Usage: launchemergencyshuttle
