# HASH: 953b35e9a521259323c95d8b83764afff92513edd3172c602d4f4b05abc478e0
lathe-menu-title = Меню станка
# HASH: 5b7ce9acf464c9c3dc1301573e971359287cb7d963f7274b9c9b92cf63a9e059
lathe-menu-queue = Очередь
# HASH: d8988544d2bb7f815343a51ef843f94e9ca0d6a3ee93cfcbc1fede0a3027facb
lathe-menu-server-list = Список серверов
# HASH: 726c6e63d2f588d18b5d144c11206772b8fa7b99f6f9a77496e29d077ed85ed2
lathe-menu-sync = Синхр.
# HASH: 075558adec120be64c4aed603014785bbb76e0080147bb49e66e2459477f705b
lathe-menu-search-designs = Поиск проектов
# HASH: 733565aeb33f5f4ecb38402cc31bbf9d2586d336913a8f542bec1d7209f9d571
lathe-menu-category-all = Всё
# HASH: 0736674e27a19bae1ef18892b1306fb16842d7a6ad6a6d9bce7c15498ed21dc7
lathe-menu-search-filter = Фильтр
# HASH: 14ab15d1b50e3aadfe5b90e18747a1f3b23d185322f35006c86c8a03ab1217e3
lathe-menu-amount = Кол-во:
# HASH: bed7ba263f9e78a05c6e2d9cf51c9d0f5b72015f4ff0b3c31dd0d9f35f4c6bce
lathe-menu-recipe-count =
    { $count ->
        [1] { $count } Рецепт
       *[other] { $count } Рецепты
    }
# HASH: 6a682e3ac0ae3bf6d16408c066d895332434ec177f9d014012e3b232f1f39873
lathe-menu-reagent-slot-examine = Сбоку имеется отверстие для мензурки.
# HASH: 01a169bcd39756c16e5f183486fd4a4cf4ca9e54fc183aa57ede8cce9395b67e
lathe-reagent-dispense-no-container = Жидкость выливается из { $name } на пол!
# HASH: 230aa5ee3a2b7b544b6aa85167786bf1128f14332efbd71b0290d4f151d7cd7e
lathe-menu-result-reagent-display = { $reagent } ({ $amount }ед.)
# HASH: d2dc81760caf5b438c5f231eba39d34b66e837e6befe62011f15533358b065ff
lathe-menu-material-display = { $material } { $amount }
# HASH: 49fe9c832f32140156ce478af70d7fe417c90ba0ab770fe16b68717701fdcd6f
lathe-menu-tooltip-display = { $amount } { $material }
# HASH: d34aec19c90b1bff2d8b73508ed7acd60d02e00c515db2f1ae973e27c3d01000
lathe-menu-description-display = [italic]{ $description }[/italic]
# HASH: ae38175b7da2c99133a0a0f0ee3f69705f6d13128fd92b26ad75166ae79e64ba
lathe-menu-material-amount =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } ({ $unit })
       *[other] { NATURALFIXED($amount, 2) } ({ $unit })
    }
# HASH: 6edef62f9e4e65434d2fbced939514297c58ba5282244a43a63d2db689877a13
lathe-menu-material-amount-missing =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } { $unit } { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { $unit } не хватает[/color])
       *[other] { NATURALFIXED($amount, 2) } { $unit } { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { $unit } не хватает[/color])
    }
# HASH: 10976b0bd7cc43e45ec6e59c14f6b8a05388f5eed30390a107e3995af4de8c2b
lathe-menu-no-materials-message = Материалы не загружены
# HASH: 86eb0cf4617be8d4e55e29affd8fc81c1f303e48caa690126940f79b0bb6798e
lathe-menu-fabricating-message = Производится...
# HASH: 712f0ac2e11261884d61ef9ce2b795536968740371a837ac1a876e8c3e38065d
lathe-menu-materials-title = Материалы
# HASH: ccd7bedf766832bb731e5885984020aa8daaab35994da2a957dad1f46f8efbed
lathe-menu-queue-title = Очередь производства
# HASH: 747e0c650974465668ccd1ca20db40200f733c34a7fba90558e9299eb344fc70
lathe-menu-silo-linked-message = Silo Linked
