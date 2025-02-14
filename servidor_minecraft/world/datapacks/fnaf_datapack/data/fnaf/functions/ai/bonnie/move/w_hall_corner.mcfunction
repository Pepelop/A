###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] if score *Night Game matches 1..3 run function bonnie:animations/w_hall_corner/play
execute as @e[tag=bonnie] if score *Night Game matches 4..7 run function bonnie:animations/w_hall_corner_twitching/play
execute as @e[tag=bonnie] positioned 80.0 42.5 175.2 rotated -90 0 run function bonnie:move
execute as @e[tag=bonnie] if score *Night Game matches 1..3 run function bonnie:animations/w_hall_corner/stop

###Extra
execute if score *Pos_Bonnie Game matches 4 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 4 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 5 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 1

scoreboard players reset *BonnieRobotvoice Timer

scoreboard players set *Pos_Bonnie Game 6