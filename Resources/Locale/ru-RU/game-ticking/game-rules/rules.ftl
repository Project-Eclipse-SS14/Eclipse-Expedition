# HASH: aa0cabd3e317ba6224eba878a0f13741a79a2609c762003b95a48a246c6ae3d8
# General
rule-restarting-in-seconds =
    Перезапуск через { $seconds } { $seconds ->
        [one] секунду
        [few] секунды
       *[other] секунд
    }.
# HASH: 9956cea5d74b024a688881a54424ae2ed180e9635ef994862252c695cf1d1764
rule-time-has-run-out = Время вышло!
# HASH: dd97c9d4661e57864661882196086737d11b2175fda928ee21ce2e462096612f
# Respawning
rule-respawn-in-seconds =
    Возрождение через { $second } { $second ->
        [one] секунду
        [few] секунды
       *[other] секунд
    }...
