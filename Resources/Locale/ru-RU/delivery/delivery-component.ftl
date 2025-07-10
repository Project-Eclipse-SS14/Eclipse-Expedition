# HASH: aff9b77af459e834fd36b0fc9fce0324aa8da55e2336ecb5336d5398fc7cdec1
delivery-recipient-examine = Этот предназначен для { $recipient }, { $job }.
# HASH: a050dd1263b6191e5a85dce4017d73c7323457d433b255d5d738a7d505b9e67a
delivery-already-opened-examine = Он уже был открыт.
# HASH: f90d5134cf95239cf172edf98da1cbeae6f9effd150921c3656d426cfa9033f3
delivery-recipient-no-name = Безымянный
# HASH: 3561c5cbba509594e470179c2d863356c039d8ab3d47e8513c96599034e3441e
delivery-recipient-no-job = Неизвестный
# HASH: 49070525b450d959d9e84055c93ce92394ff3d2e4d87be9459a3a8c76f6b488b
delivery-unlocked-self = Вы разблокируете { $delivery } с помощью отпечатка пальца.
# HASH: 3ecccbeb002a3dc6b2dbba739ab40726995927dfcb89150b40770d7b7015f208
delivery-opened-self = Вы открываете { $delivery }.
# HASH: 12c1f640a274f7b0ca3c0442940e19e839a72e70b8f531571627856e41f8334c
delivery-unlocked-others = { CAPITALIZE($recipient) } разблокировал { $delivery } с помощью { POSS-ADJ($possadj) } отпечатка пальца.
# HASH: 17ccae86c2f488226aab92c2327d0f172d2b6fc091d0d8101200e889bde10241
delivery-opened-others = { CAPITALIZE($recipient) } открыл { $delivery }.
# HASH: 8ba7f9679dc11e6b17d5376ef66735163042217f69fbbc0ba19d0c03998d3cfe
delivery-unlock-verb = Разблокировать
# HASH: a8c216a10043f0522c630db587551be0cb76b1d63a0d7edbaae16b9d4e3253a2
delivery-open-verb = Открыть
# HASH: 89e13fb0451c15d161563003caf5be503616687d192d3d33537b11eb2a39cae3
delivery-earnings-examine = Delivering this will earn the station [color=yellow]{ $spesos }[/color] spesos.
# HASH: b71bbc8a2cc2c752bafd78520198b97d02ec309eb9f38d21961385efff45f293
delivery-slice-verb = Slice open
# HASH: 5d6e36b603b6a5241cda2b8ec8e4985773334a646405879ec349c1783ebedd98
delivery-teleporter-amount-examine =
    { $amount ->
        [one] It contains [color=yellow]{ $amount }[/color] delivery.
       *[other] It contains [color=yellow]{ $amount }[/color] deliveries.
    }
# HASH: bcefd483df3ea08957c82c5cf5fda4c20109021149721ff74405a9496066bee6
delivery-teleporter-empty = The { $entity } is empty.
# HASH: 30f79c9b1f55c98b7835da2be4ff43f73b5b13539b918d868ab193fb2aa76036
delivery-teleporter-empty-verb = Take mail
# HASH: af38d014ac918e989a29e8e58f8990a63279639ed3dd955c95ee84695df5d9de
delivery-priority-examine = This is a [color=orange]priority { $type }[/color]. You have [color=orange]{ $time }[/color] left to deliver it to get a bonus.
# HASH: 50b31544401ba02aa0190e07f3bd8527981d1062df4aa343b2676a2ad944d69e
delivery-priority-delivered-examine = This is a [color=orange]priority { $type }[/color]. It got delivered on time.
# HASH: 23a818d54d531dd29fa42771cf6eb347a28b6701824a235e55ea1a6c169d681e
delivery-priority-expired-examine = This is a [color=orange]priority { $type }[/color]. It ran out of time.
# HASH: 5a1920d1a0bbb23eb934c6e07c7f72ec0030c7ebe2587b433b71dd7aae8086ec
delivery-fragile-examine = This is a [color=red]fragile { $type }[/color]. Deliver it intact for a bonus.
# HASH: cf2762390911d7cddbce34ed96f47209c157a8087a2d087b4a5076c1f16dfc5d
delivery-fragile-broken-examine = This is a [color=red]fragile { $type }[/color]. It looks badly damaged.
# HASH: c0c7123d2b27ac324d3aadbff2dbb8079356328bf9405019baa5eb74e0d63c79
delivery-bomb-examine = This is a [color=purple]bomb { $type }[/color]. Oh no.
# HASH: 0335624ef14ad5acc4c6f1a9a57d80db3c1d4f2dc9146728e39316991ceb7c0c
delivery-bomb-primed-examine = This is a [color=purple]bomb { $type }[/color]. Reading this is a bad use of your time.
