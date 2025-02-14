###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] run function bonnie:animations/supply_closet/play
execute as @e[tag=bonnie] positioned 90.1 42 168.5 rotated -90 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/supply_closet/stop

###Extra
execute if score *Pos_Bonnie Game matches 4 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 4 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 6 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 5 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 6 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.8

scoreboard players set *Pos_Bonnie Game 5