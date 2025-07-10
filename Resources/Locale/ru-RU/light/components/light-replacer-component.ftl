# HASH: 752f34019b7b013113d2a38fb8546431bb6049ebf4592fd68bc02f5eb838e648
# Shown when player tries to replace light, but there is no lighs left
comp-light-replacer-missing-light = В { $light-replacer } не осталось лампочек.
# HASH: 8f13bde166866c95f4cbbd50db608c76714652c0effdc370c1f493ca206465e7
# Shown when player inserts light bulb inside light replacer
comp-light-replacer-insert-light = Вы вставили { $bulb } в { $light-replacer }.
# HASH: f213625a1bd60ffdbedaa89a32ed01b9e36dc96e7da8fbdaecb9801773bcc66d
# Shown when player tries to insert in light replacer brolen light bulb
comp-light-replacer-insert-broken-light = Вы не можете вставлять разбитые лампочки!
# HASH: e442a8272ca9f4a10d43103885a4ee1dc29cd120b5df1f25b005e9703de80c2d
# Shown when player refill light from light box
comp-light-replacer-refill-from-storage = Вы пополнили { $light-replacer }.
# HASH: e0737064566c08b866b23ad69db99d892ef60049a2e640363d9f7b8fd794fcdf
comp-light-replacer-no-lights = Здесь пусто.
# HASH: 25b90a5020257eca89cfefeeab0e9c51b74fab982cf51b112c390b41a249e38d
comp-light-replacer-has-lights = Здесь находится следующее:
# HASH: d5aac23fadaba49c2d5facf2bd020c6f7f38a8886aa9f688c583257a21ab0311
comp-light-replacer-light-listing =
    { $amount ->
        [one] [color=yellow]{ $amount }[/color] [color=gray]{ $name }[/color]
       *[other] [color=yellow]{ $amount }[/color] [color=gray]{ $name }s[/color]
    }
