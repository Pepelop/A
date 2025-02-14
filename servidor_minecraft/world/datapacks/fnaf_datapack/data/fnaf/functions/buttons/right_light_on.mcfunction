scoreboard players set *RightLight Game 1
execute unless score *LeftLight Game matches 1 run scoreboard players add *Usage Game 1
execute if score *RightDoor Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:7}
execute if score *RightDoor Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:8}
execute as @e[tag=right_door] run function right_door:set_variant/lit
execute as @e[tag=buttons_left] run function fnaf:buttons/left_light_off
function fnaf:buttons/right_light_loop_reset
data merge entity @e[tag=button_light_right,limit=1] {ItemRotation:0b}
execute if score *RightDanger Game matches 1 unless score *HardMode Game matches 1 run playsound fnaf.windowscare block @a 83 42 176 1 1
execute if score *RightDanger Game matches 1 run scoreboard players set *RightDanger Game 0
tag @e[tag=buttons_right] add cd
schedule function fnaf:buttons/right_cd 0.2s replace