# HASH: 8f19d4d876c2364c23e68476827416e051b3e956762c335a618f1b5c352f68f3
# Shown when repairing something
comp-repairable-repair =
    Вы ремонтируете { PROPER($target) ->
        [true] { "" }
       *[false] это{ " " }
    }{ $target } с помощью { PROPER($tool) ->
        [true] { "" }
       *[false] это{ " " }
    }{ $tool }
