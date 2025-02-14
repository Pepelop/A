###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
function fnaf:random/3
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] run function bonnie:animations/dining_area/play
execute if score *3Random Random matches 1 run execute as @e[tag=bonnie] positioned 116.7 41.6 177.6 rotated 90 0 run function bonnie:move
execute if score *3Random Random matches 2..3 run execute as @e[tag=bonnie] positioned 110 42 176.9 rotated -80 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/dining_area/stop

###Extra
execute if score *Pos_Bonnie Game matches 1 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 1 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 3 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 9 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.6

scoreboard players set *Pos_Bonnie Game 2