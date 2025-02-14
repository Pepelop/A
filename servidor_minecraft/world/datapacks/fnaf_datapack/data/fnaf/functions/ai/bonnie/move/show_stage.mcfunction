execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/default_guitar
execute as @e[tag=bonnie] run function bonnie:animations/show_stage/play
execute as @e[tag=bonnie] positioned 122 43 178 rotated 90 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/show_stage/stop

scoreboard players set *Pos_Bonnie Game 1