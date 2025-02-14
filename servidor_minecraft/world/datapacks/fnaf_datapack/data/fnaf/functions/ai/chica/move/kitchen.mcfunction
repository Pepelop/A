execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
execute as @e[tag=chica] run function chica:set_variant/default
execute as @e[tag=chica] positioned 96 47 191 rotated -90 0 run function chica:move

###Extra

execute if score *Pos_Chica Game matches 2 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute if score *Pos_Chica Game matches 3 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 11 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.8

scoreboard players set *Pos_Chica Game 4
