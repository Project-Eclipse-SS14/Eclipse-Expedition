# HASH: 2f34d47af8934868511e0a5ce93ebeb10228456605821cecd26f9ccb4494f127
guidebook-reagent-effect-description =
    { $chance ->
        [1] { $effect }
       *[other] Имеет { NATURALPERCENT($chance, 2) } шанс { $effect }
    }{ $conditionCount ->
        [0] .
       *[other] { " " }, пока { $conditions }.
    }
# HASH: ceb110c71f770482273813b58451264f69bbe036345dfba0d2113f438d42a238
guidebook-reagent-name = [bold][color={ $color }]{ CAPITALIZE($name) }[/color][/bold]
# HASH: 16f7308be481eef35067c735c95b3bbe3fe1f829c429e87064c829dc92aa01ca
guidebook-reagent-recipes-header = Рецепт
# HASH: a27974812754c90c4458cd2ceef18f70e652b7545791c665a4cfae411f541cb4
guidebook-reagent-recipes-reagent-display = [bold]{ $reagent }[/bold] \[{ $ratio }\]
# HASH: c7b4f5c000d93119dcf8165f3489a861601a8c8149e50dd5a9726a826f55f493
guidebook-reagent-sources-header = Источники
# HASH: ec8a88ded2d7d4f3a1592ebe778eff21967189296d5a087ae8c1f648eded2c2d
guidebook-reagent-sources-ent-wrapper = [bold]{ $name }[/bold] \[1\]
# HASH: 0158ad686d58b67e605543f64428c458d236348f87621fabd5192861d87a694a
guidebook-reagent-sources-gas-wrapper = [bold]{ $name } (газ)[/bold] \[1\]
# HASH: 5125d76ec96e58baa8bd4a69b4ea107879aa8f0515b7028a39897cb081b69ec8
guidebook-reagent-effects-header = Эффекты
# HASH: e58fbd0f8a5a67551fdac83554cf0a517573dbd248ea828ae9979a3bd925ad30
guidebook-reagent-effects-metabolism-group-rate = [bold]{ $group }[/bold] [color=gray]({ $rate } единиц в секунду)[/color]
# HASH: fb237a4a02706cb2583e83dfdbc751000b8be54311431eaba630b23506830067
guidebook-reagent-plant-metabolisms-header = Метаболизм растений
# HASH: d55ebc5b13e53e59d5890bec7ac3dc062a4471337211ffce4f3bbd1bc92ab9c6
guidebook-reagent-plant-metabolisms-rate = [bold]Метаболизм растений[/bold] [color=gray](1 единица каждые 3 секунды базово)[/color]
# HASH: 96f940aa95b803708588d878949ca4eb4b212a6f0c248bb83a8cc61ae7f2ed59
guidebook-reagent-recipes-mix-info =
    { $minTemp ->
        [0]
            { $hasMax ->
                [true] { CAPITALIZE($verb) } ниже { $maxTemp }K
               *[false] { CAPITALIZE($verb) }
            }
       *[other]
            { CAPITALIZE($verb) } { $hasMax ->
                [true] между { $minTemp }K и { $maxTemp }K
               *[false] выше { $minTemp }K
            }
    }
# HASH: 2b97edc891e81d4e7d547a859e28d5efeefb9f73d5cdb608d8379b1310e01cd5
guidebook-reagent-physical-description = [italic]На вид вещество { $description }.[/italic].
