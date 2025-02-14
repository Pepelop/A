execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
function fnaf:random/3
execute as @e[tag=chica] run function chica:set_variant/default
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/dining_area1/play
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/dining_area2/play
execute if score *3Random Random matches 1 run execute as @e[tag=chica] positioned 116.2 42 179.6 rotated 90 0 run function chica:move
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] positioned 110 42 181.0 rotated 180 0 run function chica:move
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/dining_area1/stop
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/dining_area2/stop

###Extra
execute if score *Pos_Chica Game matches 1 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 1 run function fnaf:cameras/error_start
execute if score *Pos_Chica Game matches 5 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 7 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.6

scoreboard players set *Pos_Chica Game 2
