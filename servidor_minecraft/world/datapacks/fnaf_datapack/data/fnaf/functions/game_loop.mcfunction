tp @a[tag=guard,tag=!openedcamera] 81 42 179
execute if score *Power Game matches 1.. as @a[tag=guard] run function fnaf:display
function fnaf:decorations/westhall_light
execute if score *Power Game matches 1.. run scoreboard players add *HallucinationsCoolDown Timer 1
execute if score *HallucinationsCoolDown Timer matches 40 run function fnaf:random/20
execute if score *HallucinationsCoolDown Timer matches 40 if score *20Random Random matches 20 run function fnaf:random/5
execute if score *HallucinationsCoolDown Timer matches 40 if score *20Random Random matches 20 if score *5Random Random matches 5 run function fnaf:hallucinations/start
execute if score *HallucinationsCoolDown Timer matches 40.. run scoreboard players reset *HallucinationsCoolDown Timer
execute if score *Hallucinations Game matches 1 if score *Started Game matches 1 run function fnaf:hallucinations/loop
###Buttons
execute if score *LeftLight Game matches 1 run function fnaf:buttons/left_light_loop
execute if score *RightLight Game matches 1 run function fnaf:buttons/right_light_loop
###Cameras
execute as @e[tag=guardpos] at @a[tag=guard,tag=!openedcamera] run tp @s 81 42 179 ~ ~
execute as @a[tag=guard,tag=sneaking] unless score @s Sneak matches 0.. run tag @s remove sneaking
execute as @a[tag=guard,tag=sneaking,scores={Sneak=0..}] run scoreboard players reset @s Sneak
execute as @a[tag=guard,tag=!openedcamera,tag=!openingcamera,tag=!sneaking,scores={Sneak=0..}] if score *Power Game matches 1.. at @s run function fnaf:cameras/open_animation/start
execute as @a[tag=guard,tag=closingcamera,tag=!sneaking,scores={Sneak=0..}] if score *Power Game matches 1.. unless score *Pos_Bonnie Game matches 8 unless score *Pos_Chica Game matches 8 at @s run function fnaf:cameras/open_animation/start
execute as @a[tag=guard,tag=openedcamera,tag=!sneaking,scores={Sneak=0..}] at @s run function fnaf:cameras/close_animation/start
execute as @a[tag=guard,tag=openingcamera,tag=!sneaking,scores={Sneak=0..}] at @s run function fnaf:cameras/close_animation/start
execute as @a[tag=guard,tag=openedcamera] at @s run function fnaf:cameras/loop
execute if score *CameraError Game matches 1 run function fnaf:cameras/error
###AI
execute if score *AI Game matches 1 run function fnaf:ai/loop
execute if score *AI Game matches 1 if score *GoldenFreddy Timer matches 1.. unless entity @e[tag=openedcamera] run function fnaf:ai/gfreddy
###Power
execute if score *Usage Game matches 5.. run scoreboard players set *Usage Game 4
execute if score *Usage Game matches ..0 run scoreboard players set *Usage Game 1
execute if score *Power Game matches 1.. run function fnaf:power/usage
execute if score *Power Game matches 1.. run function fnaf:power/loop
execute if score *Power Game matches 0 run function fnaf:power/out_loop
###Sounds
execute if entity @a[tag=openedcamera] run function fnaf:sounds/camera
execute if score *Power Game matches 1.. unless score *JumpscareType Game matches 1.. unless entity @a[tag=openedcamera] run function fnaf:sounds/fan
execute if score *Power Game matches 1.. if entity @a[tag=openedcamera] run function fnaf:sounds/fanquiet
execute if score *Pos_Chica Game matches 4 unless score *JumpscareType Game matches 1.. run function fnaf:sounds/kitchenchica
execute if score *Power Game matches 1.. run function fnaf:sounds/alarmambience

execute if score *Power Game matches 1.. if score *Night Game matches 4..7 if score *Pos_Chica Game matches 6 positioned 79 44 183 unless entity @p[distance=..32] if score *ChicaRobotvoice Timer matches 1.. run scoreboard players reset *ChicaRobotvoice Timer
execute if score *Power Game matches 1.. if score *Night Game matches 4..7 if score *Pos_Chica Game matches 6 positioned 79 44 183 if entity @p[distance=..32] run function fnaf:sounds/chica_robotvoice

execute if score *Power Game matches 1.. if score *Night Game matches 4..7 if score *Pos_Bonnie Game matches 6 positioned 80 44 175 unless entity @p[distance=..32] if score *BonnieRobotvoice Timer matches 1.. run scoreboard players reset *BonnieRobotvoice Timer
execute if score *Power Game matches 1.. if score *Night Game matches 4..7 if score *Pos_Bonnie Game matches 6 positioned 80 44 175 if entity @p[distance=..32] run function fnaf:sounds/bonnie_robotvoice
###Call
execute if score *Night Game matches 1..5 if score *GameTime Timer matches 400 run setblock 83 42 179 barrier
execute if score *Night Game matches 1..5 if score *GameTime Timer matches 400 run summon glow_item_frame 82 42 179 {Facing:4b,Tags:["mutecall"],Invisible:1b,Invulnerable:1b,Silent:1b,Item:{id:"minecraft:coal",Count:1b,tag:{CustomModelData:18}}}
execute if score *Night Game matches 1..5 if score *GameTime Timer matches 500 run setblock 83 42 179 air
execute if score *Night Game matches 1..5 if score *GameTime Timer matches 500 run kill @e[tag=mutecall]
execute as @e[tag=mutecall,nbt={ItemRotation:1b}] run function fnaf:mutecall
data merge entity @e[tag=mutecall,limit=1,nbt=!{ItemRotation:0b}] {ItemRotation:0b}
###Time
execute if score *GameTime Timer matches 0..10799 run scoreboard players add *GameTime Timer 1
execute if score *GameTime Timer matches 0..1799 run scoreboard players set *AM Game 12
execute if score *GameTime Timer matches 2 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 1800..3599 run scoreboard players set *AM Game 1
execute if score *GameTime Timer matches 1800 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 3600..5399 run scoreboard players set *AM Game 2
execute if score *GameTime Timer matches 3600 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 3600 if score *AI_Bonnie Game matches 0..19 run scoreboard players add *AI_Bonnie Game 1
execute if score *GameTime Timer matches 5400..7199 run scoreboard players set *AM Game 3
execute if score *GameTime Timer matches 5400 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 5400 if score *AI_Bonnie Game matches 0..19 run scoreboard players add *AI_Bonnie Game 1
execute if score *GameTime Timer matches 5400 if score *AI_Chica Game matches 0..19 run scoreboard players add *AI_Chica Game 1
execute if score *GameTime Timer matches 5400 if score *AI_Foxy Game matches 0..19 run scoreboard players add *AI_Foxy Game 1
execute if score *GameTime Timer matches 7200..8999 run scoreboard players set *AM Game 4
execute if score *GameTime Timer matches 7200 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 7200 if score *AI_Bonnie Game matches 0..19 run scoreboard players add *AI_Bonnie Game 1
execute if score *GameTime Timer matches 7200 if score *AI_Chica Game matches 0..19 run scoreboard players add *AI_Chica Game 1
execute if score *GameTime Timer matches 7200 if score *AI_Foxy Game matches 0..19 run scoreboard players add *AI_Foxy Game 1
execute if score *GameTime Timer matches 9000..10799 run scoreboard players set *AM Game 5
execute if score *GameTime Timer matches 9000 if score *Power Game matches 1.. run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *GameTime Timer matches 10800 run function fnaf:menu/night_end
###Quit the game
execute as @e[tag=quit,nbt=!{ItemRotation:0b}] at @s as @p[tag=guard,tag=!openedcamera] unless score @s QuitConfirm matches 1.. run function fnaf:quit/warn
execute as @a[scores={QuitConfirm=1}] run setblock 80 43 179 yellow_carpet
execute as @a[scores={QuitConfirm=1..}] run scoreboard players remove @s QuitConfirm 1
execute as @e[tag=quit,nbt=!{ItemRotation:0b}] at @s as @p[tag=guard,tag=!openedcamera] if score @s QuitConfirm matches 1.. run function fnaf:quit/confirm