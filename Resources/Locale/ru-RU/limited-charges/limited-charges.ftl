# HASH: b0eba1f7d47890bab7bd908cd773fb309922aaf1c064c88dade648ab67c50632
limited-charges-charges-remaining =
    Имеется { $charges } { $charges ->
        [one] заряд
        [few] заряда
       *[other] зарядов
    }
# HASH: 4ad9b8e6c26cb8ba3ebbc5608d8182f80c64628edddc1ca5574a54e01493673a
limited-charges-max-charges = Имеет [color=green]максимум[/color] зарядов.
# HASH: d24a2646f7f54b3c351698607e7417ea0b572907ab56b2ed1bd9651fe273517f
limited-charges-recharging =
    { $seconds ->
        [one] До нового заряда осталась [color=yellow]{ $seconds }[/color] секунда.
        [few] До нового заряда осталось [color=yellow]{ $seconds }[/color] секунды.
       *[other] До нового заряда осталось [color=yellow]{ $seconds }[/color] секунд.
    }
