scoreboard players add *Cutscene Timer 1
execute if score *Cutscene Timer matches 1 run clear @a
execute if score *Cutscene Timer matches 1 run playsound fnaf.chimes ambient @a 81 52 179 20
execute if score *Cutscene Timer matches 1 run title @a times 0 0 15
execute if score *Cutscene Timer matches 1 run title @a title {"text": "\uC006"}
execute if score *Cutscene Timer matches 180 run title @a times 20 30 0
execute if score *Cutscene Timer matches 180 run title @a title {"text": "\uC006"}
execute if score *Cutscene Timer matches 20..120 as @e[tag=6_am_digits] at @s run tp @s ~ ~ ~-0.0029
execute if score *Cutscene Timer matches 120 run playsound fnaf.yay ambient @a 81 52 179 10
execute if score *Cutscene Timer matches 1..220 run effect give @a slowness 1 120 true
execute if score *Cutscene Timer matches 1..220 run tp @a 77 56 179 180 90
execute if score *Cutscene Timer matches 210 run item replace entity @e[tag=6_am_bg] armor.head with air
execute if score *Cutscene Timer matches 210 run item replace entity @e[tag=6_am_digits] armor.head with air
execute if score *Cutscene Timer matches 221 if score *Night Game matches 7 if score *AI_Bonnie Game matches 15..20 if score *AI_Freddy Game matches 15..20 if score *AI_Chica Game matches 15..20 if score *AI_Foxy Game matches 15..20 unless entity @e[tag=menu_star3] run function fnaf:menu/ending3_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 6 unless entity @e[tag=menu_star2] run function fnaf:menu/ending2_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 5 unless entity @e[tag=menu_star1] run function fnaf:menu/ending1_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 5..7 unless score *Ending Game matches 1.. run function fnaf:menu_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 4 run function fnaf:menu/night_5_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 3 run function fnaf:menu/night_4_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 2 run function fnaf:menu/night_3_start
execute if score *Cutscene Timer matches 221 if score *Night Game matches 1 run function fnaf:menu/night_2_start
execute if score *Cutscene Timer matches 221 run scoreboard players set *EndCutscene Timer 0
execute if score *Cutscene Timer matches 221 run scoreboard players reset *Cutscene Timer
