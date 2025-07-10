# HASH: be7c9df582dfc939b7896f9156a74b9fc3b5cef4f24844a32f099d31bbddd61c
ent-BaseDelivery = { ent-BaseItem }
    .desc = { ent-BaseItem.desc }
# HASH: 1b48e711840c49db5993cbd525aa17cdfb23a4e454329feafafae908d8af0c4f
ent-PackageDelivery = упаковка
    .desc = { ent-BaseDelivery.desc }
# HASH: c1949acc3dfcf4e3ab990e440bccef78bc747f103482733db4494e27ead60205
ent-LetterDelivery = письмо
    .desc = { ent-BaseDelivery.desc }
# HASH: 7b12f90ee647d0f3bce7b0d06d0601dec07303468c9919eae7067559632742d1
ent-DeliveryModifierPriority = { "" }
    .desc = Компоненты, которые необходимо добавить, когда доставка осуществляется в приоритетном режиме.
# HASH: c1c4ffddc561f668b919097a85555d2ae5d80d30732ae07806e6248c405d9cc2
ent-DeliveryModifierFragile = { "" }
    .desc = Компоненты, которые необходимо добавить, если доставка осуществляется как хрупкая.
# HASH: 7ebd6e085f4b8975e3a8ada1f519ea65d0a6383a7fa7c385c3ec4d698f8b80d4
ent-DeliveryModifierBomb = { "" }
    .desc = Components to add when a delivery is rolled as a bomb.
