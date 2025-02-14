scoreboard players set *LeftLight Game 1
execute unless score *RightLight Game matches 1 run scoreboard players add *Usage Game 1
execute if score *LeftDoor Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:3}
execute if score *LeftDoor Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:4}
execute unless score *Pos_Bonnie Game matches 7 as @e[tag=left_door] run function left_door:set_variant/lit
execute if score *Pos_Bonnie Game matches 7 as @e[tag=left_door] run function left_door:set_variant/lit_bonnie
execute as @e[tag=buttons_right] run function fnaf:buttons/right_light_off
function fnaf:buttons/left_light_loop_reset
execute if score *LeftDanger Game matches 1 unless score *HardMode Game matches 1 run playsound fnaf.windowscare block @a 83 42 176 1 1
execute if score *LeftDanger Game matches 1 run scoreboard players set *LeftDanger Game 0
tag @e[tag=buttons_left] add cd
schedule function fnaf:buttons/left_cd 0.2s replace