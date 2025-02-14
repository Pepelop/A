execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
execute as @e[tag=chica] run function chica:set_variant/default
execute as @e[tag=chica] if score *Night Game matches 1..3 run function chica:animations/e_hall_corner/play
execute as @e[tag=chica] if score *Night Game matches 4..7 run function chica:animations/e_hall_corner_twitching/play
execute as @e[tag=chica] positioned 78 42 184 rotated -90 0 run function chica:move
execute as @e[tag=chica] if score *Night Game matches 1..3 run function chica:animations/e_hall_corner/stop

###Extra

execute if score *Pos_Chica Game matches 5 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 7 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 8 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 1

scoreboard players reset *ChicaRobotvoice Timer

scoreboard players set *Pos_Chica Game 6
