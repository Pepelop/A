execute as @e[tag=freddy] run function freddy:set_variant/default
execute as @e[tag=freddy] run function freddy:animations/show_stage/play
execute as @e[tag=freddy] positioned 121.0 43 179 rotated 110 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/show_stage/stop

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 1