# HASH: 3b09dcb4110f51d9b1225655132cb6e40730c3d41d5c463df9faf1cd11973b0b
generator-clogged = { $generator } резко отключается!
# HASH: de63bba0fd6f4b440dd47446fc558458df217f88680bc0f7e8ce506ced5ada5b
portable-generator-verb-start = Запустить генератор
# HASH: fba5dda2ab1caaa3d86c024cb835cdb6de6b99acc572c6a3103f6dc69296d2d3
portable-generator-verb-start-msg-unreliable = Запуск генератора. Это может потребовать нескольких попыток.
# HASH: 7b7dbbc9c160681d9dc88f8c9533ce042a1c4ef7230859fa8208f3d9c485b1bd
portable-generator-verb-start-msg-reliable = Запустить генератор.
# HASH: 126992b6105ed746b36f3a443bef4ab21344299cc0943ea765ff76abebefa2ad
portable-generator-verb-start-msg-unanchored = Генератор должен быть закреплён!
# HASH: c521b50e29063b53d27af45016b50788271ec8695531101fae2ee990a3b0c4f4
portable-generator-verb-stop = Остановить генератор
# HASH: 347b6dcb2b6742069a2494616d234d5fb79b047223c4f20fe9098ea9b512e86d
portable-generator-start-fail = Вы дёргаете за трос, но он не заводится.
# HASH: db7ec4f3bc48e8d6a706495bfa60b4e7da2ea31e7b889feac35b4448c7aedeba
portable-generator-start-success = Вы дёргаете за трос, и он оживает.
# HASH: 4c956e0b2c92a94896c4db17e838716da5ba844613dc541fd3cb9b3f69fcedb0
portable-generator-ui-title = Портативный генератор
# HASH: 4ae66cd835fb0cb29281a37fd9009385aed4bc14c1f67e4273a8f6163153499c
portable-generator-ui-status-stopped = Остановлен:
# HASH: 588af5f7aeb510a51e24023b3c1f4f077101542aacde0d2dca51bac0186cf081
portable-generator-ui-status-starting = Запускается:
# HASH: 77829202bc111d8518bc6a0fe07817225e0617f598f52e59f306bacd60a8171a
portable-generator-ui-status-running = Работает:
# HASH: da055231d80f4ef7beb00d4ed3991d01122904d1d4d3f676b20716bad18aec0b
portable-generator-ui-start = Старт
# HASH: fe37ed4e253eb32620a2d12265193477b9adf6686a41d87abfec39a2fe437e69
portable-generator-ui-stop = Стоп
# HASH: aa7e840f30abec2b8477ca78d1c4d72aae4935bdec0358d5490c4819fc48a723
portable-generator-ui-target-power-label = Цел. мощн. (кВт):
# HASH: e47b62115c80eb67fceab28296613098f3e25d214497eeafb5763bd1055d4484
portable-generator-ui-efficiency-label = Эффективность:
# HASH: 5717ef8dc3c10ab4b169d9a4b657f07ea9c9bef7e1a47649264784bb42a905db
portable-generator-ui-fuel-use-label = Расход топлива:
# HASH: 6880aa139a9ac63837bdb896672ecd65e17572b1ce85e5a25b66e99743c31b14
portable-generator-ui-fuel-left-label = Остаток топлива:
# HASH: af2560cb777085ec44fa45a8e31f95ac768a4e5a8b308ae290510948e096540b
portable-generator-ui-clogged = В топливном баке обнаружено загрязнение!
# HASH: 153335d08ca1a8aeb4c73148672bf1d5f9bdb54ab0b1ef087f5183472c03d649
portable-generator-ui-eject = Извлечь
# HASH: 66aae5ec930c2902d0073c61e7a397ba928f343204c4f40bc9aa2a0e79c9f87a
portable-generator-ui-eta = (~{ $minutes } минут)
# HASH: ba0a26346776afea343661bce888ef87fe8b837706bea336b3e4dcc39e8690a0
portable-generator-ui-unanchored = Не закреплено
# HASH: 043b35b6ce7f20ca52229d893683c6a0c1dafbd3db5dde520406f874e0d49307
portable-generator-ui-current-output = Текущая мощность: { $voltage }
# HASH: ef1de1a3482249aea5ac2245e46ef1425e6e959ad8c27cf20d1e95dcc3f6f081
portable-generator-ui-network-stats = Электросеть:
# HASH: 6c6bb3c5eef08b2a6d874bd048176b03a9651d14a48814869798a6e3073fea14
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
# HASH: f363e81fa0e155587685388125f28961ee9e20bb60431e3658ff34f65d653f60
portable-generator-ui-network-stats-not-connected = Не подключён
# HASH: e36b8d9069089c1c7859f755e8eacc972b76c46ddc8db92d46674298df5cdb2c
power-switchable-generator-examine = Выработанная энергия направлена на { $voltage }.
# HASH: 3f83b183f432bf701f9bd34f1e5dd8bf035167f84b58ce2cbe01e7ea012d56df
power-switchable-generator-switched = Выход переключён на { $voltage }!
# HASH: 4edf393e9af1ab76bcff8fe67da916f3f77485e463b4274650be90705110ac1f
power-switchable-voltage =
    { $voltage ->
        [HV] [color=orange]ВВ[/color]
        [MV] [color=yellow]СВ[/color]
       *[LV] [color=green]НВ[/color]
    }
# HASH: c97e4b44fac11461b8db1699d3378ea2bbc203ff8b5e0147e5206d3235863be5
power-switchable-switch-voltage = Переключить на { $voltage }
# HASH: 6abd9455444c524c7ebb15c6578baaad67cd27d9acea84ea99fbad5c77cf4f00
fuel-generator-verb-disable-on = Сначала выключите генератор!
