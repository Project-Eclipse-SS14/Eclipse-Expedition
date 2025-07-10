# HASH: e2fce9fac9143fdb3630ea77ae1048c52721322ad9cb839ee182da10e52de679
analysis-console-menu-title = аналитическая консоль
# HASH: fd5d11deea33cbab77d5e79e4c4ea4db1217ab7b7fb5a1f44d0fa2c9746ff737
analysis-console-server-list-button = Список серверов
# HASH: 9ea9e8936875cb48960f6cfaa967b66124ee51b6e4458a5bd4ec5c09c2812f69
analysis-console-extract-button = Извлечь О.И.
# HASH: 83c2dcb15d02cf59d2c792852d19e45253f6fd6457a9f09e97e524d0eb2e0fc2
analysis-console-info-no-scanner = Анализатор не подключён! Пожалуйста, подключите его с помощью мультитула.
# HASH: fa6a781019b028b04b496bb31163a242b88901daffbedfa060e78067327d5098
analysis-console-info-no-artifact = Артефакт не найден! Поместите артефакт на платформу, затем просканируйте для получения данных.
# HASH: 758ecc56e19e69225198e8c871cbc8cbea6f1c1727192447b1c6d72b18c07bab
analysis-console-info-ready = Все системы запущены. Сканирование готово.
# HASH: ecc609b2cc5a31fb4add0391b476457ae3a3549aa4c5524b7b62dbf3f65008c1
analysis-console-info-id = ID_УЗЛА: { $id }
# HASH: b99b0e2490b960d53dd0db9df04bc0b4180880c0ceb74ac00513233fd865ad46
analysis-console-info-effect = РЕАКЦИЯ: { $effect }
# HASH: 6632029fe5580ff1628c312e01fbcb722c889d9d61c2828ea5628796c7a9a6ed
analysis-console-info-trigger = СТИМУЛЯТОР: { $trigger }
# HASH: cccce44b9aed3e6d85d26a7654acea6a2144452a012fad1a8c9ed9b70c350343
analysis-console-info-scanner = Сканирование...
# HASH: 40deb475f2749973333b4d6f735e6264154ee126433345c07979951667e5a9af
analysis-console-info-scanner-paused = Приостановлено.
# HASH: f0182b27110d495a10e15372d08f053b2cf06608da79635336f72b3301a1ccef
analysis-console-progress-text =
    { $seconds ->
        [one] T-{ $seconds } секунда
        [few] T-{ $seconds } секунды
       *[other] T-{ $seconds } секунд
    }
# HASH: e2da67df4e07a152e3fbe1004fb4d7e8f3b1c187ff7e56989c3dfea4dd5276a4
analyzer-artifact-extract-popup = Поверхность артефакта мерцает энергией!
# HASH: ae187433d97452df797da992bcdd78f708b71b678bcddddf77ec358e0645b83c
analysis-console-no-node = Select node to view
# HASH: 9af2b9766ae943d29c4fee57bc318ee1d33ff3e626b81490a3a2f589fbca4570
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{ $id }[/color][/font]
# HASH: 760dea78faa97607ea7006ffa151ec838ed3e2dbb446bf1f5bc2dcc132e73b8f
analysis-console-info-class = [font="Monospace" size=11]Class:[/font]
# HASH: 4ea64e70c68b5bba0809e97c8d7cc0ca047d2986cdf67246018c66914f4e26ae
analysis-console-info-class-value = [font="Monospace" size=11]{ $class }[/font]
# HASH: f65267dc996bf7a6cb3de49885d16e1b169d97765c23a6579300b7309a56e5d4
analysis-console-info-locked = [font="Monospace" size=11]Status:[/font]
# HASH: f6acb359c690dd4d54a5d827f5cd27684beec76767928237b2ea9366f1c40f68
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
        [0] red]Locked
        [1] lime]Unlocked
       *[2] plum]Active
    }[/color][/font]
# HASH: 3c6e35c1113fac6c014a4e763ffa29f6e67c4367bbbe6b2b70df7712ca3d741c
analysis-console-info-durability = [font="Monospace" size=11]Durability:[/font]
# HASH: 527b13532512f275ff5c869f02ddc66f7d0d58c9336942e85581c5e89fec2d6e
analysis-console-info-durability-value = [font="Monospace" size=11][color={ $color }]{ $current }/{ $max }[/color][/font]
# HASH: 4c01292fb42843fa115c5e7f37e1bcaf7971dc5bc15aedfcb2d58220932a96b2
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
        [true] { $info }
       *[false] Unlock nodes to gain info
    }[/color][/font]
# HASH: 58bf0789fc0be8162d8496047b36df74f5225e2df03abeb4728f26757af52c9f
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{ $triggers }[/color][/font]
# HASH: 1888fbc78c9f867ccdf74a9240f004ee11c1cc80c4eafceeddf27e8af0cceb44
analysis-console-extract-value = [font="Monospace" size=11][color=orange]Node { $id } (+{ $value })[/color][/font]
# HASH: 6c8c11ea9b6e2f5830979ec0b1dc78760b535157e0e9a6aa1b16a225ca065b9e
analysis-console-extract-none = [font="Monospace" size=11][color=orange] No unlocked nodes have any points left to extract [/color][/font]
# HASH: e087884c9b3f47cd4564cfb21a6b97210e580b168dcd176ad77fe8c47efb1cbd
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]Total Research: { $value }[/color][/font]
