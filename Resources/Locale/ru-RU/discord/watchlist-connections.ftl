# HASH: ec5dea78a0aab8db2b894e8310478188752fd401113a8a566f12e133ff5744fc
discord-watchlist-connection-header =
    { $players ->
        [one] { $players } игрок в списке наблюдателей
       *[other] { $players } игроки в списке наблюдателей
    } Подключён к { $serverName }
# HASH: 6b4d30ea465f75b74772f19455c85c5bc64dd9a4b637a5ba316e0bbebcf4b1b5
discord-watchlist-connection-entry =
    - { $playerName } с сообщением "{ $message }"{ $expiry ->
        [0] { "" }
       *[other] { " " }(expires <t:{ $expiry }:R>)
    }{ $otherWatchlists ->
        [0] { "" }
        [one] { " " }and { $otherWatchlists } другой список наблюдения
       *[other] { " " }and { $otherWatchlists } другие списки наблюдения
    }
