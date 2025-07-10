# HASH: c699ad0eb04c59a2bc6bcb4370dc87636a00193eea131750d65f06eefc8c7954
# Shown when greeted with the Suspicion role
suspicion-role-greeting = Вы { $roleName }!
# HASH: 1a9dd43cfa6f74a10dc9937f4f3c117de7dd5591cf6c082efd5a18bae89bc138
# Shown when greeted with the Suspicion role
suspicion-objective = Цель: { $objectiveText }
# HASH: a34753e5ac511c1dc3792f8ace3c73b4c49a81a06be1732a760083a07efad616
# Shown when greeted with the Suspicion role
suspicion-partners-in-crime =
    { $partnersCount ->
        [zero] Вы сами по себе. Удачи!
        [one] Ваш союзник: { $partnerNames }.
       *[other] Ваши союзники: { $partnerNames }.
    }
