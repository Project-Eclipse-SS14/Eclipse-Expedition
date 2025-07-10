# HASH: c9f101fa8ca08bc83f016a932c3d23e01895c428abb501b6743ceb4e19a4256e
# Shown when clicking your Role Button in Suspicion
suspicion-ally-count-display =
    { $allyCount ->
       *[zero] Вы сами по себе. Удачи!
        [one] Ваш союзник: { $allyNames }.
        [other] Ваши союзники: { $allyNames }.
    }
