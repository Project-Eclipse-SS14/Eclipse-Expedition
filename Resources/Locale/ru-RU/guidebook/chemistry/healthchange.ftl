# HASH: bfe3d8ae4f352ed5fe01bb2d34b8ae847533244f0659876e5bedf633f3aa946e
health-change-display =
    { $deltasign ->
        [-1] [color=green]{ NATURALFIXED($amount, 2) }[/color] ед. { $kind }
       *[1] [color=red]{ NATURALFIXED($amount, 2) }[/color] ед. { $kind }
    }
