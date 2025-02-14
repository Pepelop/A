###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/invisible
execute as @e[tag=bonnie] run function bonnie:animations/jumpscare/play
execute as @e[tag=bonnie] positioned 82.8 41.1 179.5 rotated 90 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/jumpscare/pause
execute as @e[tag=aj.bonnie,type=minecraft:armor_stand] run data merge entity @s {Marker:0b}

scoreboard players set *BonnieMoan Timer 1
scoreboard players set *Pos_Bonnie Game 9
tp @e[tag=guardpos] 81 42 179 -90 0
