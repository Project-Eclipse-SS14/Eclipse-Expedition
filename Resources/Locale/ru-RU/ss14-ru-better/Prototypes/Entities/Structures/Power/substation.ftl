# HASH: 9a77fc6bf1849b3b4652fda7d33898fc938d0e8521a3dd5dfb9c62c7348cbb0b
ent-BaseSubstation = подстанция
    .desc = Понижает напряжение подаваемого в него электричества.
# HASH: f2c4daefb38f125c6e60c8b819b52e4002c7e5391de5e54595b0145012cfed51
ent-BaseSubstationWall = настенная подстанция
    .desc = Подстанция, предназначенная для компактных шаттлов и помещений.
# HASH: 51855d22df6616e0463c8e61eb9d5b9467803b3cce2651bcac4d479894ae3719
ent-SubstationBasic = { ent-BaseSubstation }
    .desc = { ent-BaseSubstation.desc }
    .suffix = Базовая, 2,5МДж
# HASH: ac0de57f8391452e7e1a451b34fb87b1bea00e160e1bac13b344ec5566cbd71f
ent-SubstationBasicEmpty = { ent-SubstationBasic }
    .desc = { ent-SubstationBasic.desc }
    .suffix = Пустой
# HASH: af579dfb19ac888f0456a9bd2a72e034081ee63e525718fbef24654be86025fb
ent-SubstationWallBasic = { ent-BaseSubstationWall }
    .desc = { ent-BaseSubstationWall.desc }
    .suffix = Базовая, 2МДж
# HASH: 0ebd2c80408e2a8cba4ad6c18b62ef4deda3d9bb4dd28801249d5d859f282c9f
ent-BaseSubstationWallFrame = каркас настенной подстанции
    .desc = Каркас для строительства подстанции.
# HASH: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
ent-CoreSubstation = { "" }
    .desc = { "" }
