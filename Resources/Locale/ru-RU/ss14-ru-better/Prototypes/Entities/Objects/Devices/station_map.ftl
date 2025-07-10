# HASH: 01c7374486e898f84c618065cc4aff968394974996c559227d7c7ad359f33366
ent-BaseHandheldStationMap = карта станции
    .desc = Отображает схему текущей станции.
# HASH: f961410776f7442a13bd49089164251d4f080c88abd96ace48ec4fc579d1f034
ent-HandheldStationMap = { ent-BaseHandheldStationMap }
    .desc = { ent-BaseHandheldStationMap.desc }
    .suffix = Handheld
# HASH: c4a8eba6c05fb05ef84a2bd9dbed745a6567cc1f2b3800ca979acaad7658e5bb
ent-HandheldStationMapEmpty = { ent-HandheldStationMap }
    .desc = { ent-HandheldStationMap.desc }
    .suffix = Ручной, Пустой
# HASH: 49d1550f12203250ac79ea11b9090ad515960726bcab1a846e4fd622d049f2e3
ent-HandheldStationMapUnpowered = { ent-BaseHandheldStationMap }
    .desc = { ent-BaseHandheldStationMap.desc }
    .suffix = Handheld, Always Powered
