# HASH: 5a6c512292aa7c27b65a4581d643998caba9c1beaff1f090d739985b5ed295e0
reagent-effect-guidebook-create-entity-reaction-effect =
    { $chance ->
        [1] Создаёт
       *[other] создают
    } { $amount ->
        [1] { $entname }
       *[other] { $amount } { $entname }
    }
# HASH: dc30ae0e5b07392ad426e39efe6eb51aa1e316895f3d26fa9a1c8777e99cb0ad
reagent-effect-guidebook-explosion-reaction-effect =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } взрыв
# HASH: 2b6213d1b48554b5e4246e864dd1e16f539b9db43880707fdcc04dd2ccfd0e16
reagent-effect-guidebook-emp-reaction-effect =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } электромагнитный импульс
# HASH: f00743e8fe978bea057d6582e7398fe98907a38fa0c3d3648b4d441f78c87d67
reagent-effect-guidebook-flash-reaction-effect =
    { $chance ->
        [1] Causes
       *[other] cause
    } a blinding flash
# HASH: 6d5cb844d291efec6ddf21aa2c26750f35dff3aee4705186189beddf659614c6
reagent-effect-guidebook-foam-area-reaction-effect =
    { $chance ->
        [1] Создаёт
       *[other] создают
    } большое количество пены
# HASH: 4e764bf80459db9e97629f4debfee4c14885b1afb54033fec2e5e600c7bb1634
reagent-effect-guidebook-smoke-area-reaction-effect =
    { $chance ->
        [1] Создаёт
       *[other] создают
    } большое количество дыма
# HASH: 0cd8b4acced3dbbe890ad4ea54533e51f72192d0026a6e0308a61fba5655db25
reagent-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Утоляет
       *[other] утоляют
    } { $relative ->
        [1] жажду средне
       *[other] жажду на { NATURALFIXED($relative, 3) }x от обычного
    }
# HASH: f699b509b79ee39a64f627a634b11f2095c671d804eb5371791b9928e6a0ac76
reagent-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Насыщает
       *[other] насыщают
    } { $relative ->
        [1] голод средне
       *[other] голод на { NATURALFIXED($relative, 3) }x от обычного
    }
# HASH: 62bc09442740a2fca30b56c5cd5d193b40489a9510e22f2fb6bf9c0099a098d6
reagent-effect-guidebook-health-change =
    { $chance ->
        [1]
            { $healsordeals ->
                [heals] Излечивает
                [deals] Наносит
               *[both] Изменяет здоровье на
            }
       *[other]
            { $healsordeals ->
                [heals] излечивать
                [deals] наносить
               *[both] изменяют здоровье на
            }
    } { $changes }
# HASH: 1a421ae8cbf6d26485e483280cdb5fc0505692bd0446e1f0aaad318752bdb0f4
reagent-effect-guidebook-status-effect =
    { $type ->
        [add]
            { $chance ->
                [1] Вызывает
               *[other] вызывают
            } { LOC($key) } минимум на { NATURALFIXED($time, 3) }, эффект накапливается
       *[set]
            { $chance ->
                [1] Вызывает
               *[other] вызывают
            } { LOC($key) } минимум на { NATURALFIXED($time, 3) }, эффект не накапливается
        [remove]
            { $chance ->
                [1] Удаляет
               *[other] удаляют
            } { NATURALFIXED($time, 3) } от { LOC($key) }
    }
# HASH: d62e262e013e5f8e697243cdc8a24bc7e63f1009845f29325b799998d259a02b
reagent-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Устанавливает
       *[other] устанавливают
    } температуру раствора точно { NATURALFIXED($temperature, 2) }k
# HASH: d5faabcaa6e14f99794a7cadc341a141e3d2b1286b9a391b5cb366f647b19389
reagent-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Добавляет
               *[-1] Удаляет
            }
       *[other]
            { $deltasign ->
                [1] добавляют
               *[-1] удаляют
            }
    } тепло из раствора, пока температура не достигнет { $deltasign ->
        [1] не более { NATURALFIXED($maxtemp, 2) }k
       *[-1] не менее { NATURALFIXED($mintemp, 2) }k
    }
# HASH: 51a2cd87d3d3805e0a9b947969ce9296af9b945a7c15b586b8b2c2e078bb022b
reagent-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Добавляют
               *[-1] Удаляет
            }
       *[other]
            { $deltasign ->
                [1] добавляют
               *[-1] удаляют
            }
    } { NATURALFIXED($amount, 2) }ед. от { $reagent } { $deltasign ->
        [1] к
       *[-1] из
    } раствора
# HASH: a1335336c33d9ae49c91a873c2cafc4a2290afda0b56b30309ca45315eea2c72
reagent-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Добавляет
               *[-1] Удаляет
            }
       *[other]
            { $deltasign ->
                [1] добавляют
               *[-1] удаляют
            }
    } { NATURALFIXED($amount, 2) }ед реагентов в группе { $group } { $deltasign ->
        [1] к
       *[-1] из
    } раствора
# HASH: a7af59b12070087f0bf4487681168d285ac30b0e41d6d9ff05dfec3204892324
reagent-effect-guidebook-adjust-temperature =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Добавляют
               *[-1] Удаляют
            }
       *[other]
            { $deltasign ->
                [1] добавляют
               *[-1] удаляют
            }
    } { POWERJOULES($amount) } тепла { $deltasign ->
        [1] к телу
       *[-1] из тела
    }, в котором он метабилизируется
# HASH: 14cabe62f54c4b820a42b85b7aa34e631818f92431fa60ecd50eba0f7339825e
reagent-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } болезнь { $disease }
# HASH: 9ab239a88d5aa9c1eb24ccd087e20f740859cf289dd71bc35de4cdc454d0f748
reagent-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } болезнь { $diseases }
# HASH: abc2b45842a657801e8d7d1f04583a5ec45a0a25066ba227f9b468d773197b9e
reagent-effect-guidebook-jittering =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } тряску
# HASH: d9470fe8378c31e6b25b06ff156d8cce52d4afd2477482ff12fe5817364ccbf7
reagent-effect-guidebook-chem-clean-bloodstream =
    { $chance ->
        [1] Очищает
       *[other] очищают
    } кровеносную систему от других веществ
# HASH: 555ecb9e06d14cbafff9676a8f4f4becf1c33859193b1b4e4e966b362b37ef01
reagent-effect-guidebook-cure-disease =
    { $chance ->
        [1] Излечивает
       *[other] излечивают
    } болезнь
# HASH: b491c62785f048df420b4fa7ecc283c12b804f31967390c1891cf42b65fe5ee3
reagent-effect-guidebook-cure-eye-damage =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Наносит
               *[-1] Излечивает
            }
       *[other]
            { $deltasign ->
                [1] наносят
               *[-1] излечивают
            }
    } повреждения глаз
# HASH: 0e88fb780dcc8093cafdaf58c8d885a834d7f77312b871e6df657c2e14d6ac79
reagent-effect-guidebook-chem-vomit =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } рвоту
# HASH: 7d66aa8d7b13037afd11ccd5c76e37048dbc21e06c5596c20bcdde0cebe5eab8
reagent-effect-guidebook-create-gas =
    { $chance ->
        [1] Создаёт
       *[other] создают
    } { $moles } { $moles ->
        [1] моль
       *[other] моль
    } газа { $gas }
# HASH: 1c27a6fb83b9b8e8c5568385bc7d7b1f32346aa5e0ae77b755cc081b83102acb
reagent-effect-guidebook-drunk =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } опьянение
# HASH: abdc864289a6c3d535b8dbd13145c8560eafe6f6ef809943449ea50c76d20db8
reagent-effect-guidebook-electrocute =
    { $chance ->
        [1] Бьёт током
       *[other] бьют током
    } употребившего в течении { NATURALFIXED($time, 3) }
# HASH: 7794049f0baf9b6f0353a813ecc22a4040be48e2ba87ebd0a8b3671905efc9ce
reagent-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Гасит
       *[other] гасят
    } огонь
# HASH: 4a1048f0617d74502d51dffba42eec80efd6d5b3c56b37b9dc131e2821cc0386
reagent-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Повышает
       *[other] повышают
    } воспламеняемость
# HASH: e0e5af23ba36a28f404858a1a302dc9eb5a0bcdee02a2bc6ba70e7b5a78647e7
reagent-effect-guidebook-ignite =
    { $chance ->
        [1] Поджигает
       *[other] поджигают
    } употребившего
# HASH: 7d891f7d6b199b5e9f44aad98eb15cf3d6c4412f42022739741254b7ec0d1ff8
reagent-effect-guidebook-make-sentient =
    { $chance ->
        [1] Делает
       *[other] делают
    } употребившего разумным
# HASH: c356a474410db096cfa85e130cc51e556ad6957ac0fca4e4cc7b91ce60d6ed88
reagent-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Превращает
       *[other] превращают
    } употребившего в { $entityname }
# HASH: 4be7f999ce9ae9f3504e3d72fe9db9eec9a41a26ac42d5659cb7342ec86174f5
reagent-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Усиливает
               *[-1] Ослабляет
            }
       *[other]
            { $deltasign ->
                [1] усиливают
               *[-1] ослабляют
            }
    } кровотечение
# HASH: 78250c3e5a4b9c6e0680c2be1d4a0d71444c86affda45a4d41b472ee342e7019
reagent-effect-guidebook-modify-blood-level =
    { $chance ->
        [1]
            { $deltasign ->
                [1] Повышает
               *[-1] Понижает
            }
       *[other]
            { $deltasign ->
                [1] повышают
               *[-1] понижают
            }
    } уровень крови в организме
# HASH: 35f044a64c3f786a1ee863817319373573b6419b808f1c5ee20e0f8f2ba7f725
reagent-effect-guidebook-paralyze =
    { $chance ->
        [1] Парализует
       *[other] парализуют
    } употребившего минимум на { NATURALFIXED($time, 3) }
# HASH: 193d402202603b054efa4d502e1916f310c20548c0449d7265d2dcddbf05d530
reagent-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Делает
       *[other] делают
    } скорость передвижения { NATURALFIXED($walkspeed, 3) }x от стандартной минимум на { NATURALFIXED($time, 3) }
# HASH: 3e78dc2c6c329672dd2b9e8553da1b2ec8ebb5feec3d86d1123f8837fc176224
reagent-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Предотвращает
       *[other] предотвращают
    } приступы нарколепсии
# HASH: d4fadd9ddc1b748a63c870f035f83003ac975d76a8bdd8f202ec108657d01b33
reagent-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Смывает
       *[other] смывают
    } кремовый пирог с лица
# HASH: dca1b8af7c0eac9384b5279f76e0aed5ddcd98a354a827236b699101dab61ce8
reagent-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Лечит
       *[other] лечат
    } зомби-вирус
# HASH: a09314ca665c4d075962cdc3ed7ed84faefd4f3d2826cf054545b6f5b2fbbd90
reagent-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Заражает
       *[other] заражают
    } человека зомби-вирусом
# HASH: e9e17be8e8d490a45e964d6076dbdf9a2d1fa7cf044a93ec7a857d1f4fe612c8
reagent-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Регенерирует
       *[other] регенерируют
    } { NATURALFIXED($time, 3) } { $time ->
        [one] секунду
        [few] секунды
       *[other] секунд
    } гниения
# HASH: 378bf18088bceeb082d252bdd5e59ff50910b934fa82714af17c55812bbc3c76
reagent-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Лечит
       *[other] лечат
    } зомби-вирус и обеспечивает иммунитет к нему в будущем
# HASH: eaba0e014a1d5d0186f31e448f0de8db4c876f30d823a902830f6304b65566be
reagent-effect-guidebook-area-reaction =
    { $chance ->
        [1] Вызывает
       *[other] вызывают
    } дымовую или пенную реакцию на { NATURALFIXED($duration, 3) } { $duration ->
        [one] секунду
        [few] секунды
       *[other] секунд
    }
# HASH: 9db70235b6c83ebe6de3847b8203ee4d772972ffb702ba7ebc1a12f11217bfa6
reagent-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Заставляет
       *[other] заставляют
    } химикаты, применённые к объекту, добавиться во внутренний контейнер для растворов этого объекта
# HASH: b5caca38aa5b3218ab6f95a43b61c8a50eb52c7de2845b3ea037831378f4526c
reagent-effect-guidebook-plant-attribute =
    { $chance ->
        [1] Изменяет
       *[other] изменяют
    } { $attribute } за [color={ $colorName }]{ $amount }[/color]
# HASH: 4abb8330d63cf95397bbb7aa32340830c736c4a3101c6390b7327c399bbb38bb
reagent-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Омолаживает
       *[other] омолаживают
    } растение, в зависимости от возраста растения и времени его роста
# HASH: 6061428ca41a0681fe934f9c990b7fe79c080383674218ace718be43e4e05024
reagent-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Восстанавливает
       *[other] восстанавливают
    } жизнеспособность растения, ставшего нежизнеспособным в результате мутации
# HASH: 0bf1c02e9209b0285ed3d2d4199345058571066c0b1fff660bf4d35a5bc586a6
reagent-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] Повышает
       *[other] повышают
    } продолжительность жизни растения и/или его базовое здоровье с шансом 10% на единицу
# HASH: 5b7605d43b2b054d9eceefa6e89dd5691fcc190a39799e37911230bca782cb63
reagent-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Повышает
       *[other] повышают
    } потенцию растения путём { $increase } до максимума в { $limit }. Приводит к тому, что растение теряет свои семена, когда потенция достигает { $seedlesstreshold }. Попытка повысить потенцию свыше { $limit } может вызвать снижение урожайности с вероятностью 10%
# HASH: 46149bb3004e83242e4e6374a1daa9e776c382feb2070bf9d9a5c38fd82c5029
reagent-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] Восстанавливает
       *[other] восстанавливают
    } семена растения
# HASH: b5a4a3f67afdd3e33c4403921fcf2fcfea5efd92f8287905cc8aa887a560a45f
reagent-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] Убирает
       *[other] убирают
    } семена из растения
# HASH: 693c51593da83d90835de17e0d6a425c931081a97b66dec7f329478de9908bd1
reagent-effect-guidebook-even-health-change =
    { $chance ->
        [1]
            { $healsordeals ->
                [heals] Evenly heals
                [deals] Evenly deals
               *[both] Evenly modifies health by
            }
       *[other]
            { $healsordeals ->
                [heals] evenly heal
                [deals] evenly deal
               *[both] evenly modify health by
            }
    } { $changes }
# HASH: c98d4ef260930731296371552732d461062493185c392d490ed83591c459ee16
reagent-effect-guidebook-emote =
    { $chance ->
        [1] Will force
       *[other] force
    } the metabolizer to [bold][color=white]{ $emote }[/color][/bold]
# HASH: af123aeae60cb84569c201d9f10f2bfb4f58eff6150c588113984f8a35bcad9a
reagent-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] Helps
       *[other] help
    } unlock an alien artifact.
# HASH: 838364913e166bf99b7f517220b6cdc5f74c4795dbb8913326ce4656f6066d46
reagent-effect-guidebook-artifact-durability-restore = Restores { $restored } durability in active alien artifact nodes.
