# HASH: bc577cd0e4838458949715e2230b3e0c3c8802b89f2374582f7a670c4c614e29
sensor-monitoring-window-title = Консоль мониторинга датчиков
# HASH: b2aa08c1c1e019999894d354230fea159fa13ef2885cde2e915db9bcbcdf602b
sensor-monitoring-value-display =
    { $unit ->
        [PressureKpa] { PRESSURE($value) }
        [PowerW] { POWERWATTS($value) }
        [EnergyJ] { POWERJOULES($value) }
        [TemperatureK] { TOSTRING($value, "N3") } K
        [Ratio] { NATURALPERCENT($value) }
        [Moles] { TOSTRING($value, "N3") } моль
       *[Other] { $value }
    }
