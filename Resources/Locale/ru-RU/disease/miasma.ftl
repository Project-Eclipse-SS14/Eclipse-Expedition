# HASH: 33dc3bae3899efb9b0694cb331d68e0b8c1479e36c5865eed014c68df682bf22
ammonia-smell = Что-то резко попахивает!!
# HASH: 0543978e5ef9a82c5bb0587b80c2b7d726189cc6971f5a9c1c2d3123930eab40
perishable-1 = [color=green]{ CAPITALIZE(OBJECT($target)) } тело выглядит ещё свежим.[/color]
# HASH: 6d2a2adb1ae67e9de05628be9016f5ea55320ae4127449a5e846edf42b7766c7
perishable-2 = [color=orangered]{ CAPITALIZE(OBJECT($target)) } тело выглядит не особо свежим.[/color]
# HASH: f13e8e7b0fb205284ef7c5e5c7263015d831269a93031e2ead342ce28c05a9c1
perishable-3 = [color=red]{ CAPITALIZE(OBJECT($target)) } тело выглядит совсем не свежим.[/color]
# HASH: 367dcd4dae3762e876035ca314c423821ca9655df5b729b22e83a73178912d83
perishable-1-nonmob = [color=green]{ CAPITALIZE(SUBJECT($target)) } выглядит ещё свежо.[/color]
# HASH: 53c3296bcc7354747f96ebeb870519094bab683569b659bfa33eea232b05e09e
perishable-2-nonmob = [color=orangered]{ CAPITALIZE(SUBJECT($target)) } выглядит не особо свежо.[/color]
# HASH: cac0f1aae6c5993c617432d70c6226eee10302fb68bebaebf990949d4c79574e
perishable-3-nonmob = [color=red]{ CAPITALIZE(SUBJECT($target)) } выглядит не особо свежо.[/color]
# HASH: bd29a6fc9b6477ed77cb540bb917ff9db68c6554fd4cba3a5a4a097b3f94cda6
rotting-rotting = [color=orange]{ CAPITALIZE(SUBJECT($target)) } { GENDER($target) ->
        [male] гниёт
        [female] гниёт
        [epicene] гниют
       *[neuter] гниёт
    }![/color]
# HASH: 084ced3436fd2913589fe06f4305bad27e67bcc111b5b5ff423cb9705fd4327f
rotting-bloated = [color=orangered]{ CAPITALIZE(SUBJECT($target)) } { GENDER($target) ->
        [male] вздулся
        [female] вздулась
        [epicene] вздулись
       *[neuter] вздулось
    }![/color]
# HASH: 2a68ff00e4c121e07d131d8fb176ed2a07d0751546b535cff8134e83859cf490
rotting-extremely-bloated = [color=red]{ CAPITALIZE(SUBJECT($target)) } сильно { GENDER($target) ->
        [male] вздулся
        [female] вздулась
        [epicene] вздулись
       *[neuter] вздулось
    }![/color]
# HASH: 8bf6b824649b99fc379759f6ef2a1590eddb0ace59ef526335c457b21ea71ab4
rotting-rotting-nonmob = [color=orange]{ CAPITALIZE(SUBJECT($target)) } гниёт![/color]
# HASH: 20c23ccdb2b4976c146785a5986b4985a10feaef7817f6cef95c9d4b7f76909a
rotting-bloated-nonmob = [color=orangered]{ CAPITALIZE(SUBJECT($target)) } вздулось![/color]
# HASH: b4c2102361c0f48ec94a60189d75377116d301230fc535c0b2a67148df8f8456
rotting-extremely-bloated-nonmob = [color=red]{ CAPITALIZE(SUBJECT($target)) } сильно вздулось![/color]
