scoreboard players remove *RightLight Timer 1
execute if score *RightLight Timer matches 0 run setblock 81 44 184 air
execute if score *RightLight Timer matches 0 run fill 85 44 182 85 43 182 air
execute if score *RightLight Timer matches 0 as @e[tag=right_door] run function right_door:set_variant/dark
execute if score *RightLight Timer matches 0 run stopsound @a master fnaf.light
execute if score *RightLight Timer matches -1 run function fnaf:buttons/right_light_loop_reset