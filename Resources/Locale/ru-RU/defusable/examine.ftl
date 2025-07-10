# HASH: 5e86621c79d80e006439f8ae5d9bebee890ee4a1c16a7370525a9c8e09cecead
defusable-examine-defused = { CAPITALIZE($name) } [color=lime]обезврежена[/color].
# HASH: 9ce50930c965f466215d3094fd3c653786e798a9b05586159a80a55a75e04f89
defusable-examine-live =
    { CAPITALIZE($name) } тикает [color=red][/color] и осталось [color=red]{ $time } { $time ->
        [one] секунда
        [few] секунды
       *[other] секунд
    }.
# HASH: 1343b4b62e2b6b3a4aba833304c7e116f5acf9acc10dd05e63f4dfe4a87c6feb
defusable-examine-live-display-off = { CAPITALIZE($name) } [color=red]тикает[/color] и таймер, похоже, выключен.
# HASH: dc43f4fe4d01fd26f93d28f4c71d93a21372aa877aa8f6807275c6657e090310
defusable-examine-inactive = { CAPITALIZE($name) } [color=lime]неактивна[/color], но всё ещё может взорваться.
# HASH: 530e76d387e9ff56fe61370484b822670b82a0c91cef550092cf48b344332ce0
defusable-examine-bolts =
    Болты { $down ->
        [true] [color=red]опущены[/color]
       *[false] [color=green]подняты[/color]
    }.
