execute if score *AM Game matches 12 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA012"}'}
execute if score *AM Game matches 1 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA001"}'}
execute if score *AM Game matches 2 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA002"}'}
execute if score *AM Game matches 3 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA003"}'}
execute if score *AM Game matches 4 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA004"}'}
execute if score *AM Game matches 5 run data merge block 78 41 180 {Command:'{"text":"\\uF809\\uF805\\uA005"}'}

execute if score *Night Game matches 1 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB001"}'}
execute if score *Night Game matches 2 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB002"}'}
execute if score *Night Game matches 3 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB003"}'}
execute if score *Night Game matches 4 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB004"}'}
execute if score *Night Game matches 5 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB005"}'}
execute if score *Night Game matches 6 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB006"}'}
execute if score *Night Game matches 7 if score *HardMode Game matches 0 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB007"}'}
execute if score *Night Game matches 7 if score *HardMode Game matches 1 run data merge block 78 41 178 {Command:'{"text":"\\uF82B\\uF82A\\uF828\\uF826\\uB008"}'}

title @a title [{"nbt":"Command","block":"78 41 178","interpret":true},{"nbt":"Command","block":"78 41 180","interpret":true}]

execute if entity @s[tag=seen_hint] unless score *Blip Timer matches 1..2 unless score *JumpscareType Game matches 1.. run title @s actionbar [{"text":"\uF80B\uF80C\uF804"},{"nbt":"Command","block":"78 41 179","interpret": true},{"text":"\uF809\uF80A\uF808"},{"text": "Power left:"},{"score":{"objective":"Game","name":"*PowerDisplay"}},{"text": "%"},{"text": "\uF829\uC000"}]
execute unless entity @s[tag=seen_hint] unless score *Blip Timer matches 1..2 unless score *JumpscareType Game matches 1.. run title @s actionbar [{"text":"\uF80B\uF80C\uF804"},{"nbt":"Command","block":"78 41 179","interpret": true},{"text":"\uF809\uF80A\uF808"},{"text": "Power left:"},{"score":{"objective":"Game","name":"*PowerDisplay"}},{"text": "%"},{"text": "\uF829\uC007"}]