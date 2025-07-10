# HASH: fe78fc9887f360d7f8f23f56cc76150af7e4ea85215dc121719d6eb1975eac64
# Used internally by the PRESSURE() function.
zzzz-fmt-pressure =
    { TOSTRING($divided, "F1") } { $places ->
        [0] кПа
        [1] МПа
        [2] ГПа
        [3] ТПа
        [4] ППа
       *[5] ???
    }
# HASH: 2e570270d9a8d35b3fb7994ec95c84faa01cd280a36f1bc6d4e9823403f2a30a
# Used internally by the POWERWATTS() function.
zzzz-fmt-power-watts =
    { TOSTRING($divided, "F1") } { $places ->
        [0] Вт
        [1] кВт
        [2] МВт
        [3] ГВт
        [4] ТВт
       *[5] ???
    }
# HASH: 2e3e48f79df659283ec5a7014c83d07fe4ec41d985a1350610b85bf8ae7d1ce5
# Used internally by the POWERJOULES() function.
# Reminder: 1 joule = 1 watt for 1 second (multiply watts by seconds to get joules).
# Therefore 1 kilowatt-hour is equal to 3,600,000 joules (3.6MJ)
zzzz-fmt-power-joules =
    { TOSTRING($divided, "F1") } { $places ->
        [0] Дж
        [1] кДж
        [2] МДж
        [3] ГДж
        [4] ТДж
       *[5] ???
    }
# HASH: 8ebdf3673e5fa6080b73274f3af59c597050df992f4397c6276cfba5752315d9
# Used internally by the ENERGYWATTHOURS() function.
zzzz-fmt-energy-watt-hours =
    { TOSTRING($divided, "F1") } { $places ->
        [0] Вт⋅ч
        [1] кВт⋅ч
        [2] МВт⋅ч
        [3] ГВт⋅ч
        [4] ТВт⋅ч
       *[5] ???
    }
# HASH: e9dda8c21a976577e5d834014dfa49ecd14cddf1d56a64b07a730e67b4d220f0
# Used internally by the PLAYTIME() function.
zzzz-fmt-playtime = { $hours }Ч { $minutes }М
