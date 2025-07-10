# HASH: 6e7a247e2fa058567361de7226d0a97f978aabbe57d342c94efeafc6b0686967
gun-selected-mode-examine = Выбран режим огня [color={ $color }]{ $mode }[/color].
# HASH: 6df8683497ec9695410bafa5c679a4cdc4c96d0b009d431bfbc6b69c81202f8e
gun-fire-rate-examine = Скорострельность [color={ $color }]{ $fireRate }[/color] в секунду.
# HASH: a7ccabf7e897e92e028fae17911a522d52f91d8f9b28089e319978aa16258304
gun-selector-verb = Изменить на { $mode }
# HASH: bfd33a6a9e44c7c499a28d2b13b068bf89c525da955f8fafcaec7285057d8eac
gun-selected-mode = Выбран { $mode }
# HASH: 52f54d06593f5310961c69fbc6d24429269ca4d7529af2ade6bc3469c4c08a54
gun-disabled = Вы не можете использовать оружие!
# HASH: d57b48a8e22acd80bd8047cbe86c707befbb1cc03f1b5e03650acfce4dd86262
gun-set-fire-mode = Выбран режим { $mode }
# HASH: 200c8ee7a756e9cb61b6363fed696b67789593a3e07972432425ed8266b69607
gun-magazine-whitelist-fail = Это не помещается в оружие!
# HASH: f6e6ecf53e9e3b5285f04c7ccdc01c457ab3527b086f25176d4cb6d0001dd38e
gun-magazine-fired-empty = Патронов не осталось!
# HASH: 3bf98d8fb8068b0e595c71f576c94a19979c73a9dd2579f7ebf4c7de83b460ae
# SelectiveFire
gun-SemiAuto = полуавто
# HASH: 17603ebcdcc011d9cd3f799b50b6f94fce624e53ae499ca5c8c6a98c545926bd
gun-Burst = очередь
# HASH: 048422f362b0df07e59e4801c92a23943380acb1c2240270f0d6b45268346d27
gun-FullAuto = авто
# HASH: a05bc489e572df6b10bb3e0814bb13c5d967ba4647e0c5298c81046fc7060118
# BallisticAmmoProvider
gun-ballistic-cycle = Перезарядка
# HASH: cf0655badeec90bb4fdd39fea8269539cda3c27439cee1fe79c627e7eb88fd6e
gun-ballistic-cycled = Перезаряжено
# HASH: 6b3fcb1858565144898934f95e64e989815b34c6df6e09d20f05c70746e6a19c
gun-ballistic-cycled-empty = Разряжено
# HASH: 67c4f9b80d9ff3f5d24d76adc4b3a2a6fefc516a01603960c7de98c4f15d14e1
gun-ballistic-transfer-invalid = { CAPITALIZE($ammoEntity) } нельзя поместить в { $targetEntity }!
# HASH: 9096f703931cc702a4c78d7564f1f5bd0242b4fd7b963d9de33237e7a92cc396
gun-ballistic-transfer-empty = В { CAPITALIZE($entity) } пусто.
# HASH: b3b8fce45083da45d76795e4d9f45c6f200cab9c04ce0703d7774d89bdca077b
gun-ballistic-transfer-target-full = { CAPITALIZE($entity) } уже полностью заряжен.
# HASH: 8e8e3d71aee35872dc4dbfb5524583cd38ae5805190b16e1805e0badc9e455fc
# CartridgeAmmo
gun-cartridge-spent = Он [color=red]израсходован[/color].
# HASH: 1068f912aae7637a3fec54851d7fe50bf42a50b59942c5d62416b091390542dd
gun-cartridge-unspent = Он [color=lime]не израсходован[/color].
# HASH: a18c9a3cc1c4fe5d81c25e4274c319cf5a425c3752976182e1e6e2960c97aff1
# BatteryAmmoProvider
gun-battery-examine =
    Заряда хватит на [color={ $color }]{ $count }[/color] { $count ->
        [one] выстрел
        [few] выстрела
       *[other] выстрелов
    }.
# HASH: db94a04a7a3e9eb0468c0bc93b20088b16c5df66ed5ed4907b8477cab51f8f9c
# CartridgeAmmoProvider
gun-chamber-bolt-ammo = Затвор не закрыт
# HASH: 57a3e4e41a754dd5b33fcd4974e4c49dd46c62e8ee6bbc17c2522426e2ea09e5
gun-chamber-bolt = Затвор [color={ $color }]{ $bolt }[/color].
# HASH: bbb4c2eeb58682ea411dce982b2913329fe1b11f72db9bb5d342635d301997b9
gun-chamber-bolt-closed = Затвор закрыт
# HASH: fd9efda5e36db380900702a3752ba371603e10e691b053221f5505e4324fd803
gun-chamber-bolt-opened = Затвор открыт
# HASH: e7b022317ae4654be56c94742c84d333a33369e0027e625e9fd0157f16b3c14f
gun-chamber-bolt-close = Закрыть затвор
# HASH: c232e4146738ae7df00078a927e99b56796c2d0549c66dcac09b7297aa318afd
gun-chamber-bolt-open = Открыть затвор
# HASH: eada8fd2bd915cd5d26ead67903f67717cfcf15838d04b88daf6aaeb265b21bf
gun-chamber-bolt-closed-state = открыт
# HASH: 03957ba7a3d5e39dc23f0dc3279d9431148f11b66e0f3c828bc2b1010d8c302a
gun-chamber-bolt-open-state = закрыт
# HASH: 7f62fce41144c4eab120a5731f139c6ce85009746edc3feb3dfef8adb6d1d9dd
gun-chamber-rack = Передёрнуть затвор
# HASH: fd09c3d1a7a1166d055658519cdd317003d2a3d8f3ddc2cb4073a82482279d8e
# MagazineAmmoProvider
gun-magazine-examine =
    Тут [color={ $color }]{ $count }[/color] { $count ->
        [one] патрон
        [few] патрона
       *[other] патронов
    }.
# HASH: 5913fe46406bc979db8f84db7d69f5b1c57ce423b8a92ea2a4f8bed05488fa8c
# RevolverAmmoProvider
gun-revolver-empty = Разрядить револьвер
# HASH: 7d8ede3f38c7b70a658c4550048fe832014ac130a6237d7416aebbdb6a9ba58d
gun-revolver-full = Револьвер полностью заряжен
# HASH: 52b718b21b32b6fd609a6e31a69334525d84f04d4eca07d1c0d2bd7c71191c83
gun-revolver-insert = Заряжен
# HASH: aef8f4984c5a3e10e89cb397a445220a30307d3c9731e368e31cd8ae66848885
gun-revolver-spin = Вращать барабан
# HASH: a1f0e42c75c1657a9db236e53c97746995ac09246c76e405b42f380c600084de
gun-revolver-spun = Барабан вращается
# HASH: 1a8f19c78ee7309de72f73839997c11ea20e9ff7bf2bd5902ce6a53964324ebf
gun-speedloader-empty = Спидлоадер пуст
# HASH: 009df15f4770a5014ca8342fa3fe787b2ff52f9409815db595948144d5e1cc5c
examine-gun-spread-modifier-reduction = The spread has been reduced by [color=yellow]{ $percentage }%[/color].
# HASH: a700fb119e4aaeda2a6906397986752041f085722215ea8414e731c6fd74f743
examine-gun-spread-modifier-increase = The spread has been increased by [color=yellow]{ $percentage }%[/color].
