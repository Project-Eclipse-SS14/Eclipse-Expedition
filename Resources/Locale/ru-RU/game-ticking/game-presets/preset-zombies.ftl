# HASH: 022f2c04d7909a061f5b1eb3333f82f13611fa27f1e51f7274eb45417c1ae0e0
zombie-title = Зомби
# HASH: 0d144f15d2874f78d1f492f1f0394517a34bc1d89d616b776cd0dce9f0ddd8d6
zombie-description = На станции появились ожившие мертвецы! Работайте сообща с другими членами экипажа, чтобы пережить эпидемию и защитить станцию.
# HASH: 2ed1dc85caedcd7ec8c6116a2101ab80888607a21464c7fa243c5cddb5bf2b3a
zombieteors-title = Зомбитеоры
# HASH: 88b83e501a3dbe2156aa1d373d0a61861781d8886ec7c1360303c6288b001629
zombieteors-description = На станции во время катаклизмического метеоритного дождя появились зомби! Работайте вместе с членами экипажа и сделайте всё возможное, чтобы выжить!
# HASH: 97ff71c4153e387e5ad9cdf7ab19e8a32498471bd9416dc8ae527c256810e098
zombie-not-enough-ready-players = Недостаточно игроков готовы к игре! { $readyPlayersCount } игроков из необходимых { $minimumPlayers } готовы. Нельзя запустить пресет Зомби.
# HASH: 8634b3bddb71f384a671855f7e7130bd5d44b0dd0d86c1d35843bd807fb03da9
zombie-no-one-ready = Нет готовых игроков! Нельзя запустить пресет Зомби.
# HASH: b34f7d6b11134b03b071fe8276bc46dd34171f18f8e4c5b90eab12afef0da4fb
zombie-patientzero-role-greeting = Вы — нулевой пациент. Снарядитесь и подготовьтесь к своему превращению. Ваша цель - захватить станцию, заразив при этом как можно больше членов экипажа.
# HASH: e953cb8a9d31b2c23eedf6fe517e70e7d4cf7ff6e7dd3f56cb9dfd7226bae550
zombie-healing = Вы ощущаете шевеление в своей плоти
# HASH: b0ba2eef16892fecd67d61710f11ebb4fb6318d2d7d0ad200a90bc89ecfda105
zombie-infection-warning = Вы чувствуете, как зомби-вирус берёт верх
# HASH: 09453e089b7646c8cca090d627a595597bc397370cdbf27bc0d4d627a0d506ac
zombie-infection-underway = Ваша кровь начинает сгущаться
# HASH: ae699555b8469277c965c40ecb4c0145965ad0fd978d6f067e467721ebf8568b
zombie-alone = Вы чувствуете себя совершенно одиноким.
# HASH: f8a1324581c6fcc784d9cfaee76b460f1603afbad2c2350efe8fa2dd5ed2c3a4
zombie-shuttle-call = Мы зафиксировали, что зомби захватили станцию. Аварийный шаттл был отправлен для эвакуации оставшегося персонала.
# HASH: 1ae38cfbb0c7c2ff5d8644ec6db4a6ba8a22fd2dda2049c92b60301c1daf0e21
zombie-round-end-initial-count =
    { $initialCount ->
        [one] Единственным нулевым пациентом был:
       *[other] Нулевых пациентов было { $initialCount }, ими были:
    }
# HASH: 55534a4e6ec050f8df71131b0a24fdd4cfce9fc1f61c6907d6e8e0bf97ea0562
zombie-round-end-user-was-initial = - [color=plum]{ $name }[/color] ([color=gray]{ $username }[/color]) был одним из нулевых пациентов.
# HASH: 9467e7267e8c6380e65a8045e579ffafe2dc56c5b5f0082cc366a510220fdc02
zombie-round-end-amount-none = [color=green]Все зомби были уничтожены![/color]
# HASH: d1de75ee3b22e5f93f81b86d11b34ec2edce34a91e9002589e9bbb5dc26f8985
zombie-round-end-amount-low = [color=green]Почти все зомби были уничтожены.[/color]
# HASH: 139f03dc837414405f777a24c330cd1e40fb54b98bf1fa5bad04861af003f392
zombie-round-end-amount-medium = [color=yellow]{ $percent }% экипажа были обращены в зомби.[/color]
# HASH: 5afd9571f1fef776e077b5e1b6f4343e621719dc1e725337f404b07b62d8b32b
zombie-round-end-amount-high = [color=crimson]{ $percent }% экипажа были обращены в зомби.[/color]
# HASH: bd48a5f05bddd8aab279bef5ba6d12d10f0af5a2e22df2ca0d14b0d48c7ed8fb
zombie-round-end-amount-all = [color=darkred]Весь экипаж обратился в зомби![/color]
# HASH: c0cf95fe4dfcac26922ad6e2287c4834e3d35c9f51c678a00d9f32c8744f41f0
zombie-round-end-survivor-count =
    { $count ->
        [one] Единственным выжившим стал:
       *[other] Осталось всего { $count } выживших, это:
    }
# HASH: eb22354098df6fbbf463ac8f35b4e7538675d0897797652bc984095803d5819c
zombie-round-end-user-was-survivor = - [color=White]{ $name }[/color] ([color=gray]{ $username }[/color]) пережил заражение.
