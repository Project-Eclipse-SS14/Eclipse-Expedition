# HASH: 5de1238953d32847f8a822d740f66ba4fdf60007ec6533fd50dec6a072b5d885
cmd-grant_connect_bypass-desc = Временно разрешает пользователю обходить обычные проверки подключения.
# HASH: 3eac14d9b5a9be9a7870b61c65857735fcdda2dc11abc25456cd179c108775d1
cmd-grant_connect_bypass-help =
    Использование: grant_connect_bypass <пользователь> [продолжительность минут]
    Временно предоставляет пользователю возможность обходить обычные ограничения подключения.
    Обход действует только на этом игровом сервере и истечет через (по умолчанию) 1 час.
    Пользователь сможет присоединиться независимо от белого списка, режима паники или ограничения по количеству игроков.
# HASH: 29fec43aa3c5614687f590f56bd00f89482288771c0bb14f7f14352eea0431c1
cmd-grant_connect_bypass-arg-user = <пользователь>
# HASH: 8e39599a47e5ddac02471c2ec7a6c4688c6b50f80509e8a8bf1429855c5e6f37
cmd-grant_connect_bypass-arg-duration = [продолжительность минут]
# HASH: 912da3a746d7a9a3868119535c2350b89d9d9d50e958928cbf4f2267b822156e
cmd-grant_connect_bypass-invalid-args = Ожидалось 1 или 2 аргумента
# HASH: 31f9b9d9e4aa626477fa47373d8083dab78d2166ff2b8cd74fe617ef8362ef65
cmd-grant_connect_bypass-unknown-user = Не удалось найти пользователя '{ $user }'
# HASH: d15d8b7517e6cbc0c0ee1f597b8d8dbcd0bd3fd96f3e08e9324183a225ea4c85
cmd-grant_connect_bypass-invalid-duration = Недопустимая продолжительность '{ $duration }'
# HASH: 158619a3ac9f5a794eaa983f02159242a40cf61b49525724e53207e9ebf63f03
cmd-grant_connect_bypass-success = Обход для пользователя '{ $user }' успешно добавлен
