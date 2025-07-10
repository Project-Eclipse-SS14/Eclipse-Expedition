# HASH: 5ffbd16997d9c4cec8452babd0899280e594245264bf2c69396713ddb640b1a9
point-scoreboard-winner = Победитель — [color=lime]{ $player }![/color]
# HASH: eb1e7024d46ac26fd44092f5f68149498ffc827768902b45b4216967d996dbea
point-scoreboard-header = [bold]Таблица результатов[/bold]
# HASH: 830fc343179a6df2632c921250f9abd77d26f613d8657d9f4054c36307a9131b
point-scoreboard-list =
    { $place }. [bold][color=cyan]{ $name }[/color][/bold] набирает [color=yellow]{ $points ->
        [one] { $points } очко
       *[other] { $points } очков
    }.[/color]
