execute as @e[tag=freddy] run function freddy:set_variant/default
execute as @e[tag=freddy] run function freddy:animations/jumpscare_powerout/play
execute as @e[tag=freddy] positioned 83 41.2 179 rotated 90 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/jumpscare_powerout/pause
execute as @e[tag=aj.freddy,type=minecraft:armor_stand] run data merge entity @s {Marker:0b}