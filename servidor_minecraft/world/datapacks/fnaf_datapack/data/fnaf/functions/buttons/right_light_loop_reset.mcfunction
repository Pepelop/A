setblock 81 44 184 light[level=9]
fill 85 44 182 85 43 182 light[level=4]
execute as @e[tag=right_door] run function right_door:set_variant/lit
execute at @a[tag=guard] run playsound fnaf.light master @a ~ ~ ~
function fnaf:random/2
function fnaf:random/3
execute if score *HardMode Game matches 0 run scoreboard players operation *RightLight Timer = *2Random Random
execute if score *HardMode Game matches 0 run scoreboard players operation *RightLight Timer += *3Random Random
execute if score *HardMode Game matches 1 run scoreboard players operation *RightLight Timer = *3Random Random
execute if score *Pos_Chica Game matches 7 as @e[tag=chica] run function chica:set_variant/default
execute if score *RightDanger Game matches 1 unless score *HardMode Game matches 1 run playsound fnaf.windowscare block @a 83 42 176 1 1
execute if score *RightDanger Game matches 1 run scoreboard players set *RightDanger Game 0
