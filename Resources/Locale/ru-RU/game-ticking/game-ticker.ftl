# HASH: deeb02a20d8248efba7c1507da59ae6edeba6614ae0d964d4341d5bce6246906
game-ticker-restart-round = Перезапуск раунда...
# HASH: 63a597675a7199a421853c2e18bb16d987475fc1043a76c094d5df10fa32db41
game-ticker-start-round = Раунд начинается...
# HASH: 2a2bb074c59a6183094823f239ab9016ca026c7db265d38ad494e5b49afb6700
game-ticker-start-round-cannot-start-game-mode-fallback = Не удалось запустить режим { $failedGameMode }! Запускаем { $fallbackMode }...
# HASH: 61185e9ec2284465e11d66043e472ce1ed08313ae82edd59dbda4c3f275256f1
game-ticker-start-round-cannot-start-game-mode-restart = Не удалось запустить режим { $failedGameMode }! Перезапуск раунда...
# HASH: e97a9892a4f2c51779542a8f776919b18ab57af16c5453b053c3c6be667b5e7c
game-ticker-start-round-invalid-map = Выбранная карта { $map } не подходит для игрового режима { $mode }. Игровой режим может не функционировать как задумано...
# HASH: 3561c5cbba509594e470179c2d863356c039d8ab3d47e8513c96599034e3441e
game-ticker-unknown-role = Неизвестный
# HASH: d248fdcc68e413a37c73c25021692c9df1bf91bb3f690ec835749852c5a8fdaf
game-ticker-delay-start = Начало раунда было отложено на { $seconds } секунд.
# HASH: 275ca2c8ca8a3836cf281c312040bfcead76a33a4c99318a5a6307f4e628a4c8
game-ticker-pause-start = Начало раунда было приостановлено.
# HASH: c917584c36ac59bb5bf9bbdd536b855e6d7f1e1c4dd47e0f6b3c9b13d0b93d64
game-ticker-pause-start-resumed = Отсчёт начала раунда возобновлён.
# HASH: e2df818ed67d63e7eea08a1662c6406cfe8e8ee1c8e68b82711d1a06d20c6c63
game-ticker-player-join-game-message = Добро пожаловать на Космическую Станцию 14! Если вы играете впервые, обязательно нажмите ESC на клавиатуре и прочитайте правила игры, а также не бойтесь просить помощи в "Админ помощь".
# HASH: 82ef3178a1b29f20cc5699a31cc50cf4f4c3d8a97e038ab45f320496c4a4edbc
game-ticker-get-info-text =
    Привет и добро пожаловать в [color=white]Space Station 14![/color]
    Текущий раунд: [color=white]#{ $roundId }[/color]
    Текущее количество игроков: [color=white]{ $playerCount }[/color]
    Текущая карта: [color=white]{ $mapName }[/color]
    Текущий режим игры: [color=white]{ $gmTitle }[/color]
    >[color=yellow]{ $desc }[/color]
# HASH: 239657aae5fab930e4b92b22131eecfe6c19b6f15bbc34c2375343e31a4d920a
game-ticker-get-info-preround-text =
    Привет и добро пожаловать в [color=white]Space Station 14![/color]
    Текущий раунд: [color=white]#{ $roundId }[/color]
    Текущее количество игроков: [color=white]{ $playerCount }[/color] ([color=white]{ $readyCount }[/color] { $readyCount ->
        [one] готов
       *[other] готовы
    })
    Текущая карта: [color=white]{ $mapName }[/color]
    Текущий режим игры: [color=white]{ $gmTitle }[/color]
    >[color=yellow]{ $desc }[/color]
# HASH: 41d862e724f54e62dbd0365bd5ec364ebe0cfeae845f04402cd041b6e30d36ff
game-ticker-no-map-selected = [color=red]Карта ещё не выбрана![/color]
# HASH: 944e69637b4e8e8cbe41f4b2b394ed17c33da668cbf14eb266ce8422c857435e
game-ticker-player-no-jobs-available-when-joining = При попытке присоединиться к игре ни одной роли не было доступно.
# HASH: 2a280150e67bcce3224aa6d65ae9310e62fb89e7fc66ddb8df5bc8778181e02e
# Displayed in chat to admins when a player joins
player-join-message = Игрок { $name } зашёл!
# HASH: 0d27ca04731cd8143e3ef8f3ffe77a3bc4c7492221ff32fea91d8d029f07486c
player-first-join-message = Игрок { $name } зашёл на сервер впервые.
# HASH: 1a3ee1d15abaac1a5a4dbf76fe5641f1895229a731e860fc062e2c23e428776e
# Displayed in chat to admins when a player leaves
player-leave-message = Игрок { $name } вышел!
# HASH: 4c39d57a643b6d223bcf9c324ee6b43553183d2ce1d1297e44bf7f5aaf1248a5
latejoin-arrival-announcement =
    { $character } ({ $job }) { $gender ->
        [male] прибыл
        [female] прибыла
        [epicene] прибыли
       *[neuter] прибыло
    } на станцию!
# HASH: d632377adc6ae46b73875ad4d1c9f0d7b6351b015abd37a9c3068bf72e0295ea
latejoin-arrival-announcement-special = { $job } { $character } на палубе!
# HASH: 0ebc52cd17b0c7079bffe841f880db0e21a092a514d6135fde7a54ad19fe2746
latejoin-arrival-sender = Станции
# HASH: 3ada1d58547ce901ce4c05af42661f89b64d8c851a0db477cb0c7979a53570be
latejoin-arrivals-direction = Вскоре прибудет шаттл, который доставит вас на станцию.
# HASH: fa9f43f2f346d83aa08583926f234afe9c224c2f395be793ee1518d8fac4da29
latejoin-arrivals-direction-time = Шаттл, который доставит вас на станцию, прибудет через { $time }.
# HASH: 65a9792ff81db719f51094abce552c7b54f5774dca511f045b6eaf2578907169
latejoin-arrivals-dumped-from-shuttle = Таинственная сила не позволяет вам улететь на шаттле прибытия.
# HASH: 999f9528b121c0231b327adb9bc7df443c98420ccd9bda63332be5a5291f703d
latejoin-arrivals-teleport-to-spawn = Таинственная сила телепортирует вас с шаттла прибытия. Удачной смены!
# HASH: afcbbd1910ae3b74c5b6dc4de2989ca58118b786be8930d11d8d3ba816bd8ea2
preset-not-enough-ready-players = Не удалось запустить пресет { $presetName }. Требуется { $minimumPlayers } игроков, но готовы только { $readyPlayersCount }.
# HASH: 0fc83ee927ca3fbb270f95013e98052dfba24160dcd241376e6c1a91db63d5db
preset-no-one-ready = Не удалось запустить режим { $presetName }. Нет готовых игроков.
# HASH: cabd76b502849fe765cb50de874d2cc0b8bd7d63e739568e2052ac3d388f255b
game-run-level-PreRoundLobby = Предраундовое лобби
# HASH: f8c511d481806813d108f75eee4642d4d7d10e08be340e2f2ab2e76cc2db4d15
game-run-level-InRound = В раунде
# HASH: e61365b55a0cfce13cb8c0edb7cdab748f981960cce93f4c1b60196e1f12654e
game-run-level-PostRound = После раунда
