scoreboard players remove *LeftLight Timer 1
execute if score *LeftLight Timer matches 0 run setblock 81 44 175 air
execute if score *LeftLight Timer matches 0 run fill 85 44 176 85 43 176 air
execute if score *LeftLight Timer matches 0 as @e[tag=left_door] run function left_door:set_variant/dark
execute if score *LeftLight Timer matches 0 run stopsound @a master fnaf.light
execute if score *LeftLight Timer matches -1 run function fnaf:buttons/left_light_loop_reset