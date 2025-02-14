###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
tp @e[tag=aj.bonnie] 97 42 174.0 90 0
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] run function bonnie:animations/dining_area/play
execute as @e[tag=bonnie] positioned 96 42 174.2 rotated 90 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/dining_area/stop

###Extra
execute if score *Pos_Bonnie Game matches 2 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 3 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 9 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 5 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 6 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 4 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.8

scoreboard players set *Pos_Bonnie Game 4