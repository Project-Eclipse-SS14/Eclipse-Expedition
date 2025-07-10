# HASH: de166930aad1fe2791cf10064c3aeacf2ae81491621c18fb71e47c69e7ebc68e
cmd-atvrange-desc = Устанавливает диапазон отладки атмосферы (два числа с плавающей точкой: начало [красный] и конец [синий])
# HASH: 35e625d74eea0f1fb2cda5b8dd887041a9e2910902178ebf9c7e9d2fa389e842
cmd-atvrange-help = Использование: { $command } <start> <end>
# HASH: af8d2e9b2bbef16cf196b2ee342fa68747e3a01310ce271f0f243736f8788867
cmd-atvrange-error-start = Некорректное начальное значение (float)
# HASH: 35f4dea8f76a03a9e04319fc5e36d9c4dc18d6ac5475e8f7f33e86e9699b5b95
cmd-atvrange-error-end = Некорректное конечное значение (float)
# HASH: ef7bb92cf4b8325ac0486cf9139431ea156c35edb658636197feea43126226cc
cmd-atvrange-error-zero = Масштаб не может быть равен нулю, так как это приведет к делению на ноль в AtmosDebugOverlay.
# HASH: d970a86a99cc26991b67e644f040e33c0392e9747fee04e23f467b24ee102b76
cmd-atvmode-desc = Устанавливает режим отладки атмосферы. Это автоматически сбросит масштаб.
# HASH: c50781f04ba78b7bc5fd7d55bbe4f774c3f230ed3ce315a7956cb6ccca7bd869
cmd-atvmode-help = Использование: { $command } <TotalMoles/GasMoles/Temperature> [<gas ID (for GasMoles)>]
# HASH: a74f7b51906b01e2694b1d9f0e75cd0b3ec4dd0e6fb44fc323fbb62c4c5b2108
cmd-atvmode-error-invalid = Некорректный режим
# HASH: 99fb1f6e7028bbdcbdc058061995d3742d2850731c0aa4bc63976cae6f9571eb
cmd-atvmode-error-target-gas = Для этого режима необходимо указать целевой газ.
# HASH: bdf1f9358a27039e475cdbf38672843a575cb873422a433a3e75c7e572c5513b
cmd-atvmode-error-out-of-range = Идентификатор газа не может быть обработан или находится вне допустимого диапазона.
# HASH: b60e184ac9ce3455ca8379201b21e50ba4d4eab8a67ddc6a940733bc8b215c14
cmd-atvmode-error-info = Для этого режима дополнительная информация не требуется.
# HASH: a9713ca5ae62d32487bf364f9598fd9dc844575a460263ca060969ff3e788e4d
cmd-atvcbm-desc = Переключает цветовую палитру от красный/зеленый/синий к оттенкам серого.
# HASH: 0242631b2e80e13263ebdf35bbc9ea020b5cf2ffdc4c4d2e4acad68fd596703c
cmd-atvcbm-help = Использование: { $command } <true/false>
# HASH: b5570c5572e46f67c1729c5ebb4a3db4acc6f7e1532e562fa2163d92d33b05bc
cmd-atvcbm-error = Некорректный флаг
