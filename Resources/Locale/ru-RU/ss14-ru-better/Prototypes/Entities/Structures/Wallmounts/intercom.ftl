# HASH: 14365ee30d13f4bfad870cb15043ffe976e499778002abf7c270196dadefc62f
ent-BaseIntercom = интерком
    .desc = Интерком. На случай, когда необходимо что-то сообщить станции.
# HASH: d74d28b1df05b3842e53771c256751d6ca3692b80eb9741353b4bbe88c49e74e
ent-IntercomAssembly = интерком
    .desc = Интерком. На данный момент он бесполезен.
# HASH: 2ca4bbdb468950321a239e54e805a3bf00515ba7618c552e69a80a115907e036
ent-IntercomConstructed = { ent-BaseIntercom }
    .desc = { ent-BaseIntercom.desc }
    .suffix = Пустой, Панель открыта
# HASH: 5cecc76505aeb8a5f529c7984322ed465d1caa3155f58488de05ad437d77c93c
ent-Intercom = { ent-IntercomConstructed }
    .desc = { ent-IntercomConstructed.desc }
# HASH: b4fda2aec471f5f6c9e50412fc849476e1f08c0cdf862fb3883423c7779ae9c6
ent-BaseIntercomSecure = { ent-Intercom }
    .desc = { ent-Intercom.desc }
# HASH: 91c972e9bd05f5d519e13e4ed4eab4282a8fd14a522b94d94a8eeb63b2ade7d4
ent-IntercomCommon = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Общий
# HASH: 63558454f40339d50cd69e257a8f4d2bdeb0c8035152f1652b3b04c2ffaa36fa
ent-IntercomCommand = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal.
    .suffix = Command
# HASH: a3ca61bf5334dcbe85765d5e7d54823a40ce3a8da6e516c463317971b7700185
ent-IntercomEngineering = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Инженерный
# HASH: 1b91f2caedf038082ae9851d8f055fbc1747405cf3424db6e9dc7fc7b7d5d79c
ent-IntercomMedical = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Медицинский
# HASH: 19d70e261a974cf85eb46e8c7d2199510b64d555be998a02103fd9fca3d175e6
ent-IntercomScience = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Научный
# HASH: 4fda1e7fdadffe9ef6602ae9e6eb84cf035807dad7a8f9aa2599496d54a8c2c5
ent-IntercomSecurity = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal from security helmets, making it a bitch-and-a-half to open.
    .suffix = Security
# HASH: 5f36ea253bb6112ba86f1e96a0e03d015fc489add77e575f4c437cc91610ea88
ent-IntercomService = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Сервисный
# HASH: 7f1bba2dd0d01f1572ae32f6e8eb65b1849cf8015a07194af2cc5f2e44c253f5
ent-IntercomSupply = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Снабжение
# HASH: a3c7a760612d68bfe5749dcb6fb8a6fda6e4e6091011b9b3376dc0a9becca37e
ent-IntercomAll = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = All
# HASH: 2718759eefcbb8cbf4ed8361ced58d507ecf631f08e2158f2ab928b7cc386a1e
ent-IntercomFreelance = { ent-Intercom }
    .desc = { ent-Intercom.desc }
    .suffix = Фриланс
