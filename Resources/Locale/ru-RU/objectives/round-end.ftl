# HASH: fec3db9f7444dbfd8682c58ede5597f89d627031c43eaa27a4d2d3e1c9e94df0
objectives-round-end-result =
    { $count ->
        [one] Был один { $agent }.
        [few] Было { $count } { $agent }.
       *[other] Было { $count } { $agent }.
    }
# HASH: d064113887a365a8a71f764336fea2225aee40c3ba8702200fe439e8c187bc43
objectives-round-end-result-in-custody = { $custody } из { $count } { $agent } были арестованы.
# HASH: 4f709ba98e9adc0c991ddfa3d5c8f000e32e173f808767b9d3b8b59a047484aa
objectives-player-user-named = [color=White]{ $name }[/color] ([color=gray]{ $user }[/color])
# HASH: 1c80bcb224db4fedd2654d8098f52bf001c4ad5648e2645041d2a0ac6d1bd74d
objectives-player-named = [color=White]{ $name }[/color]
# HASH: b31822d8aaf1ce50a7a4bb38922a7bb8f690187bd3bb6462b77fa901eaae800f
objectives-no-objectives = { $custody }{ $title } – { $agent }.
# HASH: c57e138f1317d3f418516f4e18995fd3c5c991d915080573df5a81e46237425b
objectives-with-objectives = { $custody }{ $title } – { $agent } со следующими целями:
# HASH: e24823d1aa983db7356d1955f10af9bc8adc8059651cc672d48718f32644c159
objectives-objective-success = { $objective } | [color={ $markupColor }]Успех![/color]
# HASH: f91a5063a033c4d54a14aad335f217192526b3252d5792861b4885d4097cb4d0
objectives-objective-fail = { $objective } | [color={ $markupColor }]Провал![/color] ({ $progress }%)
# HASH: 8cf6935d190706016949b1431f5d8bd427a00496ce7683c717920d9ee1830d61
objectives-in-custody = [bold][color=red]| АРЕСТОВАН | [/color][/bold]
# HASH: 9bdb3666ed73a1fbb4f26828d127592c0be922818b4d80c10abc1464bd95e52e
objectives-objective-partial-success = { $objective } | [color=yellow]Partial Success![/color] ({ TOSTRING($progress, "P0") })
# HASH: a551744286013961e8ba002b4d682469d94d73fb8483eda8494762dad17379f3
objectives-objective-partial-failure = { $objective } | [color=orange]Partial Failure![/color] ({ TOSTRING($progress, "P0") })
