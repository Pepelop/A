setblock 81 44 175 light[level=9]
fill 85 44 176 85 43 176 light[level=4]
execute unless score *Pos_Bonnie Game matches 7 as @e[tag=left_door] run function left_door:set_variant/lit
execute if score *Pos_Bonnie Game matches 7 as @e[tag=left_door] run function left_door:set_variant/lit_bonnie
execute at @a[tag=guard] run playsound fnaf.light master @a ~ ~ ~
function fnaf:random/2
function fnaf:random/3
execute if score *HardMode Game matches 0 run scoreboard players operation *LeftLight Timer = *2Random Random
execute if score *HardMode Game matches 0 run scoreboard players operation *LeftLight Timer += *3Random Random
execute if score *HardMode Game matches 1 run scoreboard players operation *LeftLight Timer = *3Random Random
execute if score *Pos_Bonnie Game matches 7 as @e[tag=bonnie] run function bonnie:set_variant/default
execute if score *LeftDanger Game matches 1 unless score *HardMode Game matches 1 run playsound fnaf.windowscare block @a 83 42 176 1 1
execute if score *LeftDanger Game matches 1 run scoreboard players set *LeftDanger Game 0