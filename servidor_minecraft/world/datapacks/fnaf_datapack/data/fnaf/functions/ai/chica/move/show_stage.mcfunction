execute as @e[tag=chica] run function chica:animations/e_hall_corner_twitching/stop
execute as @e[tag=chica] run function chica:set_variant/default_cupcake
execute as @e[tag=chica] run function chica:animations/show_stage/play
execute as @e[tag=chica] positioned 122 43 180 rotated 90 0 run function chica:move
execute as @e[tag=chica] run function chica:animations/show_stage/stop

###Extra

scoreboard players set *Pos_Chica Game 1
