execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
execute as @e[tag=chica] run function chica:set_variant/invisible
execute as @e[tag=chica] run function chica:animations/door/play
execute as @e[tag=chica] positioned 85.4 42 182.8 rotated 165 0 run function chica:move
execute as @e[tag=chica] run function chica:animations/door/stop

###Extra

execute if score *Pos_Chica Game matches 6 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 8 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 1

scoreboard players set *RightDanger Game 1
scoreboard players set *Pos_Chica Game 7
