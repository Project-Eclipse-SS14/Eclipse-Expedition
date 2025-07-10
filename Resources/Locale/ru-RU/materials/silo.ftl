# HASH: f2724878b9dc376da0889e9cd31b74f8832d8c20242cf5fb1ca1fa714300a187
ore-silo-ui-title = Material Silo
# HASH: a1c4d981612a50536cf0bd00d02990b5447be240c32bb76a245f9eb8526efd1c
ore-silo-ui-label-clients = Machines
# HASH: 712f0ac2e11261884d61ef9ce2b795536968740371a837ac1a876e8c3e38065d
ore-silo-ui-label-mats = Materials
# HASH: 85ad5161cf5b45dfe4df6f3b51a7673832c8875bddf7f842c1f04ef02414249c
ore-silo-ui-itemlist-entry =
    { $linked ->
        [true] { "[Linked] " }
       *[False] { "" }
    } { $name } ({ $beacon }) { $inRange ->
        [true] { "" }
       *[false] (Out of Range)
    }
