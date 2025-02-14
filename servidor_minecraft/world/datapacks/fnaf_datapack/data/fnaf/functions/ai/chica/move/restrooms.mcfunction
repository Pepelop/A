execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
function fnaf:random/3
execute as @e[tag=chica] run function chica:set_variant/default
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/restrooms1/play
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/restrooms2/play
execute if score *3Random Random matches 1 run execute as @e[tag=chica] positioned 107.9 42 199 rotated -90 0 run function chica:move
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] positioned 113.8 41.6 199.7 rotated -130 0 run function chica:move
execute if score *3Random Random matches 1 run execute as @e[tag=chica] run function chica:animations/restrooms1/stop
execute if score *3Random Random matches 2..3 run execute as @e[tag=chica] run function chica:animations/restrooms2/stop

###Extra

execute if score *Pos_Chica Game matches 2 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 11 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.6

scoreboard players set *Pos_Chica Game 3
