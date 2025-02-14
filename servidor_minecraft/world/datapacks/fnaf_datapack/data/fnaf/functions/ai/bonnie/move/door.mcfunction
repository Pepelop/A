###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/invisible
execute as @e[tag=bonnie] run function bonnie:animations/door/play
execute as @e[tag=bonnie] positioned 82.8 42 176.0 rotated -18 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/door/stop

###Extra
execute if score *Pos_Bonnie Game matches 5 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 6 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 6 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 5 run function fnaf:cameras/error_start

execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 1

scoreboard players set *LeftDanger Game 1

scoreboard players set *Pos_Bonnie Game 7