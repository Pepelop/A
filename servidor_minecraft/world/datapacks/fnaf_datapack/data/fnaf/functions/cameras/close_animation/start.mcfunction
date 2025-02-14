item replace entity @s weapon.mainhand with paper{CamAnim:1b,display:{Name:'{"text":" "}'},HideFlags:2,CustomModelData:5,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-127,Operation:0,UUID:[I;95226840,-2097724647,-1583523333,-1498113578]}]}

stopsound @a master fnaf.camera.loop 
stopsound @a master fnaf.camera.open
#execute unless score *Hallucinations Game matches 1 run stopsound @a master fnaf.robotvoice
stopsound @a master fnaf.fanloop.camera
execute if entity @a[tag=openedcamera] run scoreboard players reset *CameraSound Timer
execute if entity @a[tag=openedcamera] run scoreboard players reset *FanSound Timer
playsound fnaf.camera.close master @a ~ ~ ~ 10
item replace entity @s weapon.offhand with air
effect clear @s slowness
clear @s
scoreboard players reset @a Sneak
function fnaf:random/20
execute if entity @s[tag=openedcamera] run scoreboard players operation *MovementCoolDown_Foxy Game = *20Random Random
execute if entity @s[tag=openedcamera] run scoreboard players operation *MovementCoolDown_Foxy Game *= *20 CONST
#execute if entity @s[tag=openedcamera] run tellraw @a [{"text": "Foxy's Cooldown is "},{"score":{"name": "*MovementCoolDown_Foxy","objective":"Game"}}]
execute if score *FreddyMovementSuccess Game matches 1 run function fnaf:ai/freddy
#title @a subtitle {"text":""}
tp @s @e[tag=guardpos,limit=1]
execute if entity @a[tag=openedcamera] run scoreboard players remove *Usage Game 1

scoreboard players reset *BonnieMoan Timer
scoreboard players reset *ChicaMoan Timer
scoreboard players remove *CameraAnim Timer 1
execute if score *Pos_Bonnie Game matches 9 run function fnaf:jumpscares/bonnie_start
execute if score *Pos_Chica Game matches 9 unless score *Pos_Bonnie Game matches 9 run function fnaf:jumpscares/chica_start

execute if score *Freddy_MovementSchedule Game matches 2 run function fnaf:ai/freddy/move/dining_area
execute if score *Freddy_MovementSchedule Game matches 3 run function fnaf:ai/freddy/move/restrooms
execute if score *Freddy_MovementSchedule Game matches 4 run function fnaf:ai/freddy/move/kitchen
execute if score *Freddy_MovementSchedule Game matches 5 run function fnaf:ai/freddy/move/east_hall
execute if score *Freddy_MovementSchedule Game matches 6 run function fnaf:ai/freddy/move/e_hall_corner

scoreboard players set *GoldenFreddy Game 0
execute if entity @s[tag=openedcamera] run function fnaf:decorations/camera_eastereggs

tag @s remove openedcamera
tag @s add sneaking
tag @s remove openingcamera
tag @s add closingcamera
