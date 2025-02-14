execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
execute as @e[tag=chica] run function chica:set_variant/default
execute as @e[tag=chica] run function chica:animations/jumpscare/play
execute as @e[tag=chica] positioned 82.7 41.2 179.5 rotated 90 0 run function chica:move
execute as @e[tag=chica] run function chica:animations/jumpscare/pause
execute as @e[tag=aj.chica,type=minecraft:armor_stand] run data merge entity @s {Marker:0b}

scoreboard players set *ChicaMoan Timer 1
scoreboard players set *Pos_Chica Game 9
tp @e[tag=guardpos] 81 42 179 -90 0
