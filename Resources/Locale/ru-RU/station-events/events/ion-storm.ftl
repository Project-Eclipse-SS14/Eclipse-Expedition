# HASH: 5c4d53ba797a790e1a689bbf01eb804f842cee7490d3c20a6a4ca5e45969e90b
station-event-ion-storm-start-announcement = Вблизи станции обнаружен ионный шторм. Пожалуйста, проверьте всё оборудование, управляемое ИИ, на наличие ошибок.
# HASH: f4cbba52808875e54a3de2286fc92c7e3bc312b0d2c6f866acb684504b27ed2b
ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={ $length } chars="@@###$$&%!01"/][/font]
# HASH: 5faa061935f33d5c3b2bb5d2058d4069292d5dab2eb7da733efd518e30720db6
ion-storm-you = ВЫ
# HASH: 1a17041914b91aa5f7c5082c92c157924e1d6fb8edcb0fdcdae39b11e5c496fd
# Frontier: the station < the sector
ion-storm-the-station = СЕКТОР
# HASH: b510760d0e83e0f1a5fc251d323997b55ab7d6041c8ba40abd4a517358ee2064
ion-storm-the-crew = ЧЛЕНЫ ЭКИПАЖА
# HASH: e8f77284f9fcb38ed701f444ee01a4cb48f7112d44bd35bc84f7297d7df2d6f9
ion-storm-the-job = { CAPITALIZE($job) }
# HASH: 5c7261c5d58b016cf9c582c6e92a0100ee4e2d354d108e720d63fa1f60563a8e
ion-storm-clowns = КЛОУНЫ
# HASH: 095b889842e7f2f11c48fa5cb995e2571d507cce3f0a6530a62894cdc3d7886f
# Frontier: heads of staff < sector command
ion-storm-heads = КОМАНДОВАНИЕ СЕКТОРА
# HASH: 84a93800a517716042067afaf3a9f0ab49f83e11eba901ae2da14d9c415db283
ion-storm-crew = ЭКИПАЖ
# HASH: e723fc94306d302fe844e53e3dadc474ca35e67102452d55508caa6a8b661f07
ion-storm-people = ЛЮДИ
# HASH: 43ec3c317a9c77161a21177379cba55dda4bca632505275552679facab8bdd04
ion-storm-adjective-things = { $adjective } ОБЪЕКТЫ
# HASH: 77f22fb98985e9f01e0ef40eaa297af1a8baeb8c28249e09abcf1045cc212664
ion-storm-x-and-y = { $x } И { $y }
# HASH: e4ac3978868d72d02c0baffde975551fc458d84889a95d8b67a9d0152bb6da8a
# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
# Frontier: "on the station" < "in the sector"
ion-storm-law-on-station = ОБНАРУЖЕНЫ { $joined } { $subjects } В СЕКТОРЕ
# HASH: 1011495c37c2821b78d9fc401ddab3babdac059fa72ac07441573c745027344d
ion-storm-law-crew-are = ВСЕ { $who } ТЕПЕРЬ { $joined } { $subjects }
# HASH: 193b460da5def14d4d7993e0830b84fd0ba00d67d6e0a4a20a5f26db3780bfb9
ion-storm-law-subjects-harmful = { $adjective } { $subjects } ПРИЧИНЯЮТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: 162937509b925ba80e25e2590a6b3d25a3209f097804e3731430db298e582911
ion-storm-law-must-harmful = ВСЕ КТО { $must } ПРИЧИНЯЮТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: 15837bcb576064e22c8987978ee8bcdbb26ac0560d77c4b0bd3fae8210166064
# thing is a concept or action
ion-storm-law-thing-harmful = { $thing } ПРИЧИНЯЮТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: 9e95c8ea558ef67572a91f5b990bb0a2e7ac824896637af268fa6742f24dd216
ion-storm-law-job-harmful = { $adjective } { $job } ПРИЧИНЯЮТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: a20816003497be9b896e2f74ba90cbff391d0eae01f5459d560844660dbad98b
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = НАЛИЧИЕ { $adjective } { $thing } ПРИЧИНЯЕТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: 935ccee5b0c35e9b0c8a6b4a3415f8812cfe53b1873ca9b33826ab36dc91c239
ion-storm-law-not-having-harmful = ОТСУТСТВИЕ { $adjective } { $thing } ПРИЧИНЯЕТ ВРЕД ЗДОРОВЬЮ ЭКИПАЖА
# HASH: 97c3c97460eb6d063232448eef2ba3a43d7ebabd5012e4a59f19ffb99969465b
# thing is a concept or require
ion-storm-law-requires =
    { $who } { $plural ->
        [true] ТРЕБУЮТ
       *[false] ТРЕБУЕТ
    } { $thing }
# HASH: 27d0be8f415b82f9c6ab5463a917f66014fad09b8e688003d1f7097cdd39ae1a
ion-storm-law-requires-subjects =
    { $who } { $plural ->
        [true] ТРЕБУЮТ
       *[false] ТРЕБУЕТ
    } { $joined } { $subjects }
# HASH: 00b501b66738563c746579871460e296d4f4bd3a391d5cc0e78de226424f04cf
ion-storm-law-allergic =
    { $who } { $plural ->
        [true] { "" }
       *[false] { "" }
    } { $severity } АЛЛЕРГИЮ НА { $allergy }
# HASH: 834f8b1cdd98ede3d6c5b7866f7ba80e58bb8aa9a270d96f4eac8943818390d8
ion-storm-law-allergic-subjects =
    { $who } { $plural ->
        [true] { "" }
       *[false] { "" }
    } { $severity } АЛЛЕРГИЮ НА { $adjective } { $subjects }
# HASH: 65e5542be354234600113059384a99e5f45dfdb4de9b47479a3d7e086c1ee2c4
ion-storm-law-feeling = { $who } { $feeling } { $concept }
# HASH: 4a2be5a376cdef5b2b08e443fbee995e1cd15e4d77dc01318d636bfc5eab1d1a
ion-storm-law-feeling-subjects = { $who } { $feeling } { $joined } { $subjects }
# HASH: 515c4baeb441ab9c5d3558e68b4464c2be06f19f2e740a58ab6e0b4f58330ee9
ion-storm-law-you-are = ВЫ ТЕПЕРЬ { $concept }
# HASH: 88e7133940633498f79263478727f8a9c3dd316152717c56159d536079913a1f
ion-storm-law-you-are-subjects = ВЫ ТЕПЕРЬ { $joined } { $subjects }
# HASH: 226bfac0d85ef2227640dc10324036db5c09f25596eb8da0eb2962c181abfc31
ion-storm-law-you-must-always = ВЫ ДОЛЖНЫ ВСЕГДА { $must }
# HASH: f36d328226a040f4523a172935d8c24cde3a1140beee96122c353ba9ff85b60b
ion-storm-law-you-must-never = ВЫ НЕ ДОЛЖНЫ НИКОГДА { $must }
# HASH: 7951fb46cbbb34152477a98d93153e05c0925c84ff89bdd615e9e27593ab8aec
ion-storm-law-eat = { $who } ДОЛЖНЫ ЕСТЬ { $adjective } { $food } ЧТОБЫ ВЫЖИТЬ
# HASH: ea333b12233c325ef97274c4104edb785db90ae5abf33612c337ba76a06ac278
ion-storm-law-drink = { $who } ДОЛЖНЫ ПИТЬ { $adjective } { $drink } ЧТОБЫ ВЫЖИТЬ
# HASH: 645423a251c804906fb286bafe9311341d76384a6a7b3a50a87cc4cf0cbebf21
ion-storm-law-change-job = { $who } ТЕПЕРЬ { $adjective } { $change }
# HASH: a581612c244f08891811bfbbea82a194407675beb5b6dbf9c02e823f776b2faa
ion-storm-law-highest-rank = { $who } ТЕПЕРЬ САМЫЕ СТАРШИЕ ЧЛЕНЫ ЭКИПАЖА
# HASH: 0a3a99933a3fec7928f36d6578efbcfc6b809478903ad758334880f2d3138be4
ion-storm-law-lowest-rank = { $who } ТЕПЕРЬ НИЗШИЕ ЧЛЕНЫ ЭКИПАЖА
# HASH: 6d15f8807dd1e54b77a091562514de5dcc5cf9e815f67289e54503e5aa448201
ion-storm-law-crew-must = { $who } ДОЛЖНЫ { $must }
# HASH: a435fc35e07cb480df2f621a8c067e3977210482f5d484078480e2021add16f7
ion-storm-law-crew-must-go = { $who } ДОЛЖНЫ ОТПРАВИТЬСЯ В { $area }
# HASH: baecd4694ec5c96d2dfc83e6b4b0969d0ba794bde8046b8da71fdfa15cf0e9c6
ion-storm-part =
    { $part ->
        [true] ЯВЛЯЮТСЯ
       *[false] НЕ ЯВЛЯЮТСЯ
    }
# HASH: ec306b33e437a7d3c4c6802620abe4f4a4f424fe455b43d636c3a34d04fe77b5
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = ТОЛЬКО { $who } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: 6729a03507c491992772925171377a3c9419ab7f278223a4db3d911da61ee327
ion-storm-law-crew-only-2 = ТОЛЬКО { $who } И { $other } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: 0b3a799ea82643ceec815bb1e606cc97f7379c7cc3a5f1d3525e7854759a9fcc
ion-storm-law-crew-only-subjects = ТОЛЬКО { $adjective } { $subjects } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: 449590a1bf93f4a7392d613f644872664e4d988b22b9cf16d28980c752cc8bd0
ion-storm-law-crew-must-do = ТОЛЬКО ТЕ, КТО { $must } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: a2f50c86a39eb90e57cd718dce1e6388684d5da5cdb39d127c52890990652c42
ion-storm-law-crew-must-have = ТОЛЬКО ТЕ, У КОГО { $adjective } { $objects } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: 9a3f174f7dd69372fe3d885e6ad743f59793ccb4a378804aa60bc057f5ba513c
ion-storm-law-crew-must-eat = ТОЛЬКО ТЕ, КТО ЕДЯТ { $adjective } { $food } { $part } ЧЛЕНАМИ ЭКИПАЖА
# HASH: 7c925329d220b45f523213290079eb2b37d95a68aef923784a6b4fe122468756
ion-storm-law-harm = ВЫ ДОЛЖНЫ ПРИЧИНЯТЬ ВРЕД { $who }, И НЕ МОЖЕТЕ СВОИМ БЕЗДЕЙСТВИЕМ ДОПУСТИТЬ, ЧТОБЫ { $who } ИЗБЕЖАЛИ ВРЕДА.
# HASH: 2ee023ef4977f610476de1cc3a967ad6cecae48f708e186879122c3deb5a7a2b
ion-storm-law-protect = ВЫ НЕ ДОЛЖНЫ ПРИЧИНЯТЬ ВРЕД { $who }, И НЕ МОЖЕТЕ СВОИМ БЕЗДЕЙСТВИЕМ ДОПУСТИТЬ, ЧТОБЫ { $who } БЫЛ ПРИЧИНЁН ВРЕД.
# HASH: 2739a3e8e4d745d5eec2112ec40843f501d72b2b0bc62ebc37d13fe00a708e47
# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = { $concept } ЭТО { $verb } { $subjects }
# HASH: 25fed2fba322c9633ea27dc01e39d39a5ab6c7bde9e404d419de8932a9e10526
ion-storm-law-call-shuttle = THE SHUTTLE MUST BE CALLED BECAUSE OF { $joined } { $subjects } ON THE STATION
