execute as @e[tag=freddy] run function freddy:set_variant/default
execute as @e[tag=freddy] run function freddy:animations/powerout/play
execute as @e[tag=freddy] positioned 82.85 42 176.75 rotated 30 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/powerout/stop