# HASH: 9f0baeb19d592c2ea596f8286620e892707d80a3aa684ad19c0b2e9c637952a9
# Examine text after when they're holding something (in-hand)
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } держит { $items }.
# HASH: 0923e9e68ccd3e035fc096ee9cc4aef4fcdfcdddbd3f23cd07221b7a87b79d90
comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } ничего не держит.
# HASH: 9c4a99b22c3821f2e1e1b38d29e151012d0f8d4c974562e47793536bab62ab12
comp-hands-examine-wrapper = [color=paleturquoise]{ $item }[/color]
# HASH: d053efa7098fe30711117596d39338ec53983f3854b1511482b7c078a2886b1b
hands-system-blocked-by = Руки заняты
