# HASH: 8f51af690f20c08a8d70964633f4d414921b1505b428afca09ef072658b795c4
comp-kitchen-spike-deny-collect = { CAPITALIZE($this) } уже чем-то занят, сначала закончите срезать мясо!
# HASH: 35011bc63f729133e3fbe66d8e39fc2f4079b791de2026312b5cf74418672902
comp-kitchen-spike-deny-butcher = { CAPITALIZE($victim) } не может быть разделан на { $this }.
# HASH: 61dad266e86fec42a4bde78cc020a9e6a0fb7d8afea7826547b7b586b98f6469
comp-kitchen-spike-deny-butcher-knife = { CAPITALIZE($victim) } не может быть разделан на { $this }, используйте нож для разделки.
# HASH: 1c8f383b2ed605e02133f734a193c4aaad4f544049f7872f10c0d905927c4fbf
comp-kitchen-spike-deny-not-dead =
    { CAPITALIZE($victim) } не может быть разделан. { CAPITALIZE(SUBJECT($victim)) } { GENDER($victim) ->
        [male] ещё жив
        [female] ещё жива
        [epicene] ещё живы
       *[neuter] ещё живо
    }!
# HASH: 8f13bcff60b5d0ccf8ba42b8d825c763f61ae22a3fa1c5946e9d8b3bd5d5b7b8
comp-kitchen-spike-begin-hook-victim = { CAPITALIZE($user) } начинает насаживать вас на { $this }!
# HASH: d5bee66403cd05a69a8ac21c10c4ccc223df0d04b51e2e9509a14ddeac2b6e46
comp-kitchen-spike-begin-hook-self = Вы начинаете насаживать себя на { $this }!
# HASH: 9500484b922f1512ebd26b40a0efbeb46bb0aaa2ae5925bba97b69b1e9f75682
comp-kitchen-spike-kill = { CAPITALIZE($user) } насаживает { $victim } на мясной крюк, тем самым убивая { SUBJECT($victim) }!
# HASH: 044bbba34b5dc90a4a368cbf043340b8c97b4c954fa579812b6d6a77856cbb69
comp-kitchen-spike-suicide-other = { CAPITALIZE($victim) } бросается на мясной крюк!
# HASH: abba1fc7a089165ab148556b463945b2f363f4e0dc232594acf997cdd90c7b05
comp-kitchen-spike-suicide-self = Вы бросаетесь на мясной крюк!
# HASH: 92efa81cbdc8833fd9c61682b8dfc3b45ea7d815d466e7f65fef33cddf11aa81
comp-kitchen-spike-knife-needed = Вам нужен нож для этого.
# HASH: ac2d0527a29ad5190d9447279ab66e12e5ac04c5fc0b08c678378dd683f6370b
comp-kitchen-spike-remove-meat = Вы срезаете немного мяса с { $victim }.
# HASH: 7a3c54bd1b609cb2600270c6950e271bc86470ffe64a9832646fe94a26a15e07
comp-kitchen-spike-remove-meat-last = Вы срезаете последний кусок мяса с { $victim }!
# HASH: 0d328b8b3de11f97aa64c48783337b9d67e56ab3a3a4b4ab0f3a24f3a83656e4
comp-kitchen-spike-meat-name = мясо { $victim }
