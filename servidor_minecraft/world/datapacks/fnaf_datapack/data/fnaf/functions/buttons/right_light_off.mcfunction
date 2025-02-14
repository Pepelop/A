execute if score *RightDoor Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:5}
execute if score *RightDoor Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:6}
execute as @e[tag=right_door] run function right_door:set_variant/dark
execute unless score *LeftLight Game matches 1 unless entity @a[tag=openedcamera] run scoreboard players remove *Usage Game 1
stopsound @a master fnaf.light 
scoreboard players set *LightSound Timer 0
setblock 81 44 184 air
scoreboard players set *RightLight Game 0
fill 85 44 182 85 43 182 air
data merge entity @e[tag=button_light_right,limit=1] {ItemRotation:0b}
execute if score *Pos_Chica Game matches 7..8 as @e[tag=chica] run function chica:set_variant/invisible
tag @e[tag=buttons_right] add cd
schedule function fnaf:buttons/right_cd 0.2s replace