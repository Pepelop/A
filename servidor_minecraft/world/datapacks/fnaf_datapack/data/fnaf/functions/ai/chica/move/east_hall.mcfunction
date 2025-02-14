execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
function fnaf:random/3
execute as @e[tag=chica] run function chica:set_variant/default
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/east_hall1/play
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/east_hall2/play
execute if score *3Random Random matches 1 run execute as @e[tag=chica] positioned 93.2 42 185.0 rotated 90 0 run function chica:move
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] positioned 89.6 42 184.5 rotated 110 0 run function chica:move
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/east_hall1/stop
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/east_hall2/stop

###Extra

execute if score *Pos_Chica Game matches 3 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 11 run function fnaf:cameras/error_start
execute if score *Pos_Chica Game matches 4 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 10 run function fnaf:cameras/error_start
execute if score *Pos_Chica Game matches 6 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 8 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 7 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.8

scoreboard players set *Pos_Chica Game 5
