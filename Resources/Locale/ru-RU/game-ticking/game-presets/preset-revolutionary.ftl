# HASH: abbfc80cd838ed207e544617330d613faa89e230b9930551691d49a0115f5ba4
roles-antag-rev-head-name = Глава революции
# HASH: 5007f8c0c24ccc89ccab25e52b0ada1e8d3e87df3377d9a806f40d1b0f79fd2b
roles-antag-rev-head-objective = Ваша задача - захватить станцию, склонив членов экипажа на свою сторону, и уничтожив весь командный состав станции.
# HASH: f2cd65ef5b74d546ac5aef67e1b37b2ee7383a1fb93d72edf16058c67a688ce3
head-rev-role-greeting =
    Вы - глава революции.
    Вам поручено устранить весь командный состав станции путём убийства, изгнания за борт, или ареста.
    Синдикат проспонсировал вас особой вспышкой, которая конвертирует членов экипажа на вашу сторону.
    Осторожно, она не сработает на сотрудниках службы безопасности, членах командного состава, и на тех, кто носит солнцезащитные очки.
    Viva la revolución!
# HASH: befe5a17020b890320c3eaa96a70fc0d8e62232e5f196748525123fdffedbadb
head-rev-briefing =
    Используйте вспышки, чтобы конвертировать членов экипажа на свою сторону.
    Избавьтесь от всех глав, чтобы захватить станцию.
# HASH: 2067b7d0ef9bad218793e96f785c2fff4819cb9ae68f027eebe60d848656ac44
head-rev-break-mindshield = Щит разума был уничтожен!
# HASH: c6692464f220250cbd6d3eea9095ccb41912599a10a0c36d0325e0f809ef1af3
roles-antag-rev-name = Революционер
# HASH: 5d5c041c1bc9229684711d8a2ca22248a5ab804bfc01a354a4becbc87f7f63cb
roles-antag-rev-objective = Ваша задача - защищать и выполнять приказы глав революции, а также избавиться от всего командного состава станции.
# HASH: 052405609c7c968d7426b09f75b9ebc3f8ba0534d4af8cd3eab9a585276985fd
rev-break-control =
    { $name } { GENDER($name) ->
        [male] вспомнил, кому он верен
        [female] вспомнила, кому она верна
        [epicene] вспомнили, кому они верни
       *[neuter] вспомнило, кому оно верно
    } на самом деле!
# HASH: 199ce86871c0e7b84ee4fdd9aeea94341c3e3e980bffdb5e62255e1b8cd5c7d8
rev-role-greeting =
    Вы - Революционер.
    Вам поручено захватить станцию и защищать глав революции.
    Избавьтесь от всего командного состава станции.
    Viva la revolución!
# HASH: c2d91709abc6a8fb54d092381ff1e04a9764c354c095aaafdf3fb9a72532dc6d
rev-briefing = Помогите главам революции избавиться от командования станции, чтобы захватить её.
# HASH: 705193d8e1c3d1614f2f7d3cb2c922e19b6a6620bdbd7350fff2a74b0410ebef
rev-title = Революционеры
# HASH: 6827d436e574ccdc47a09d4ac8442754c78e7ae0910f90ede726916baee26e6e
rev-description = Революционеры среди нас.
# HASH: 056173d2242c88189fb3910da02811dfccd1a9af323c4293f9455d5709446069
rev-not-enough-ready-players = Недостаточно игроков готовы к игре! { $readyPlayersCount } игроков из необходимых { $minimumPlayers } готовы. Нельзя запустить пресет Революционеры.
# HASH: b1bb53eafee0cafb9719fca52e145d79302abc6cf328c05dee59b291626facb9
rev-no-one-ready = Нет готовых игроков! Нельзя запустить пресет Революционеры.
# HASH: 706e6011b17130d8468d89ebcd3c6182f928b47f1adde1e53135600d8af988df
rev-no-heads = Нет кандидатов на роль главы революции. Нельзя запустить пресет Революционеры.
# HASH: 21d44053876e061cd8fab1168bf1e9d78b3fee95ee843d11d397f8f21e69447c
rev-won = Главы революции выжили и уничтожили весь командный состав станции.
# HASH: b93afacbd7c559c4cc63f26b5afa97751eba2e5162c5a730e27024b8284ec216
rev-headrev-count =
    { $initialCount ->
        [one] Глава революции был один:
       *[other] Глав революции было { $initialCount }:
    }
# HASH: 380b47760b14ec34db55d3ca66a5f42257f6caacd0d4855562d10b0eca176cb7
rev-lost = Члены командного состава станции выжили и уничтожили всех глав революции.
# HASH: 28cd81a6619972eb61d62b05a66a908d20637b75d462f82fc16a372ef3ad6a81
rev-stalemate = Главы революции и командный состав станции погибли. Это ничья.
# HASH: d0e3e11c1a2604f855d015c72e393a03cc3f125407cd15f1571001c57a517d5d
rev-headrev-name-user = [color=#5e9cff]{ $name }[/color] ([color=gray]{ $username }[/color]) конвертировал { $count } { $count ->
        [one] члена
        [few] члена
       *[other] членов
    } экипажа
# HASH: 1353dce970eed3e2b6d6b539125cbbfa1a5e49585c10f099894678865eee21b7
rev-headrev-name = [color=#5e9cff]{ $name }[/color] конвертировал { $count } { $count ->
        [one] члена
        [few] члена
       *[other] членов
    } экипажа
# HASH: 19fbcd3175d5006517388d40bedc3193dbf2053e01e9a68ce3b7f0f3d89978e1
rev-reverse-stalemate = Главы революции и командный состав станции выжили.
# HASH: a685b6b78bc71f3da47540ec525f26f09db61e02c32b1afd707ae6938afea246
rev-deconverted-title = Разконвертированы!
# HASH: 153d4998044287df10b1fb6f212fb6301ecb366dcb71120bc1d244f5c77fab45
rev-deconverted-text =
    Со смертью последнего главы революции, революция оканчивается.
    
    Вы больше не революционер, так что ведите себя хорошо.
# HASH: 044f5c5d245d6f8e5c386c4b639ecfa6f3556062c0dc7e6084e74c8c828bc175
rev-deconverted-confirm = Подтвердить
