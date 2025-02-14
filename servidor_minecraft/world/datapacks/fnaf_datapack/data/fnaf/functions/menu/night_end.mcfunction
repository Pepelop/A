scoreboard players set *EndCutscene Timer 1
execute if score *Night Game matches 7 if score *AI_Bonnie Game matches 5..20 if score *AI_Freddy Game matches 5..20 if score *AI_Chica Game matches 5..20 if score *AI_Foxy Game matches 5..20 if score *HardMode Game matches 1 run summon armor_stand 66 41.21 173 {Tags:["menu_star4"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:paper",tag:{CustomModelData:24}}]}
execute if score *Night Game matches 2 run item replace entity @e[tag=plushies1] container.0 with clay_ball{CustomModelData:1}
execute if score *Night Game matches 3 run item replace entity @e[tag=plushies2] container.0 with clay_ball{CustomModelData:2}
execute if score *Night Game matches 4 run item replace entity @e[tag=plushies2] container.0 with clay_ball{CustomModelData:3}
execute if score *Night Game matches 5 run item replace entity @e[tag=plushies1] container.0 with clay_ball{CustomModelData:4}
execute if score *Night Game matches 6 run item replace entity @e[tag=plushies3] container.0 with clay_ball{CustomModelData:5}
execute if score *Night Game matches 5 run item replace entity @e[tag=menu_6thnight,tag=!unlocked] armor.head with paper{CustomModelData:19}
execute if score *Night Game matches 5 run tag @e[tag=menu_6thnight,tag=!unlocked] add unlocked
execute if score *Night Game matches 6 run item replace entity @e[tag=menu_customnight,tag=!unlocked] armor.head with paper{CustomModelData:25}
execute if score *Night Game matches 6 run tag @e[tag=menu_customnight,tag=!unlocked] add unlocked
item replace entity @e[tag=6_am_bg] armor.head with paper{CustomModelData:62}
item replace entity @e[tag=6_am_digits] armor.head with paper{CustomModelData:70}
function fnaf:game_end