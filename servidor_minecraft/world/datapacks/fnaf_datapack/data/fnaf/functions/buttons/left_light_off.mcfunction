execute if score *LeftDoor Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:1}
execute if score *LeftDoor Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:2}
execute as @e[tag=left_door] run function left_door:set_variant/dark
execute unless score *RightLight Game matches 1 unless entity @a[tag=openedcamera] run scoreboard players remove *Usage Game 1
stopsound @a master fnaf.light 
scoreboard players set *LightSound Timer 0
setblock 81 44 175 air
scoreboard players set *LeftLight Game 0
fill 85 44 176 85 43 176 air
execute if score *Pos_Bonnie Game matches 7..8 as @e[tag=bonnie] run function bonnie:set_variant/invisible
tag @e[tag=buttons_left] add cd
schedule function fnaf:buttons/left_cd 0.2s replace