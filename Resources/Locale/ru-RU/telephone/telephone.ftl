# HASH: bf8d83204e5395588b14853aa08c83e1a5ae76bba22c14cd901d42d4a5a0aa64
# Chat window telephone wrap (prefix and postfix)
chat-telephone-message-wrap = [color={ $color }][bold]{ $name }[/bold] { $verb }, [font={ $fontType } size={ $fontSize }]"{ $message }"[/font][/color]
# HASH: 1e0c787e83a8c4c52aa3608f325d47a888926416692ba65340f12fcda7e78d88
chat-telephone-message-wrap-bold = [color={ $color }][bold]{ $name }[/bold] { $verb }, [font={ $fontType } size={ $fontSize }][bold]"{ $message }"[/bold][/font][/color]
# HASH: 07b3103c8be960bc94c840404a653bc8af515d1605352fb66df189f389afa07f
# Caller ID
chat-telephone-unknown-caller = [color={ $color }][font={ $fontType } size={ $fontSize }][bolditalic]Неизвестный абонент[/bolditalic][/font][/color]
# HASH: 4bca26edb4031a7c117b27336de72666b34f73a17496f04a123c910cc24afeab
chat-telephone-caller-id-with-job = [color={ $color }][font={ $fontType } size={ $fontSize }][bold]{ CAPITALIZE($callerName) } ({ CAPITALIZE($callerJob) })[/bold][/font][/color]
# HASH: 39b6afcb71e428ac2a44fbfa6798d5d4bc7829b9411790dbb9817f38bcf1f173
chat-telephone-caller-id-without-job = [color={ $color }][font={ $fontType } size={ $fontSize }][bold]{ CAPITALIZE($callerName) }[/bold][/font][/color]
# HASH: 4bcc225d5a587e55f0aad18e05c3b335a6fec6493cab61d9d3c994fe5fe03d03
chat-telephone-unknown-device = [color={ $color }][font={ $fontType } size={ $fontSize }][bolditalic]Неизвестный источник[/bolditalic][/font][/color]
# HASH: d4f06735046ecc3e5d99e604ef8cb50fdd00036bacff130641925eb4959898aa
chat-telephone-device-id = [color={ $color }][font={ $fontType } size={ $fontSize }][bold]{ CAPITALIZE($deviceName) }[/bold][/font][/color]
# HASH: 50164e69b4b2de277092786f8ad11bd9b4f07c5b94b104319f248a479cd47cc1
# Chat text
chat-telephone-name-relay = { $originalName } ({ $speaker })
