scoreboard players set *Started Game 1
scoreboard players set *AI Game 1
scoreboard players set *CameraAnim Timer 0
scoreboard players set *CameraSide Game 0
function fnaf:ai/bonnie/move/show_stage
function fnaf:ai/freddy/move/show_stage
function fnaf:ai/chica/move/show_stage
function fnaf:ai/foxy/move/stage_0
scoreboard players set *Foxy_PowerPenalty Game 10
scoreboard players set *Usage Game 1
scoreboard players set *Ambience Game 0
scoreboard players reset *FanSound Timer
scoreboard players reset @a Sneak
tag @p[tag=!spectator] add guard
tag @a remove openingcamera
tag @a remove closingcamera
effect give @a[tag=guard] jump_boost 9999 128 true
effect clear @a night_vision
execute as @e[tag=guardpos] at @s run tp @s ~ ~ ~ -90 0
tp @a[tag=guard] @e[tag=guardpos,limit=1]
scoreboard players set *Power Game 999
execute if score *Night Game matches 2 run scoreboard players set *PowerAdditional Timer 120
execute if score *Night Game matches 3 run scoreboard players set *PowerAdditional Timer 100
execute if score *Night Game matches 4 run scoreboard players set *PowerAdditional Timer 80
execute if score *Night Game matches 5..7 run scoreboard players set *PowerAdditional Timer 60
item replace entity @e[tag=gfreddy] armor.head with air
item replace entity @e[tag=office_table] armor.head with nether_brick{CustomModelData:25}
#Jumpscare Light
setblock 81 43 179 air
#Freddy Powerout Light
setblock 83 43 175 air
fill 85 46 178 85 46 180 glass
#Office Light
setblock 85 42 179 light[level=4]
setblock 81 44 178 light[level=3]
setblock 81 44 180 light[level=3]
title @a times 0 4 0
scoreboard players set *BonnieEasterEgg Game 0
scoreboard players set *StageEasterEgg Game 0
function fnaf:decorations/backstage/normal
item replace entity @e[tag=easthall_posters] container.0 with nether_brick{CustomModelData:32}
item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:19}
execute if score *Night Game matches 1 run playsound fnaf.call.1 master @a 81 42 179
execute if score *Night Game matches 2 run playsound fnaf.call.2 master @a 81 42 179
execute if score *Night Game matches 3 run playsound fnaf.call.3 master @a 81 42 179
execute if score *Night Game matches 4 run playsound fnaf.call.4 master @a 81 42 179
execute if score *Night Game matches 5 run playsound fnaf.call.5 master @a 81 42 179

data merge entity @e[tag=button_door_left,limit=1] {Fixed:0b}
data merge entity @e[tag=button_light_left,limit=1] {Fixed:0b}
data merge entity @e[tag=button_door_right,limit=1] {Fixed:0b}
data merge entity @e[tag=button_light_right,limit=1] {Fixed:0b}

execute as @e[tag=aj.bonnie,type=minecraft:armor_stand] run data merge entity @s {Marker:1b}
execute as @e[tag=aj.chica,type=minecraft:armor_stand] run data merge entity @s {Marker:1b}
execute as @e[tag=aj.freddy,type=minecraft:armor_stand] run data merge entity @s {Marker:1b}

tp @e[tag=6_am_digits] 77 53.4 179



