clear @s
scoreboard players set *UIState Game 0
execute if score *Night Game matches 5 run function fnaf:menu/night_5_start
execute if score *Night Game matches 4 run function fnaf:menu/night_4_start
execute if score *Night Game matches 3 run function fnaf:menu/night_3_start
execute if score *Night Game matches 2 run function fnaf:menu/night_2_start
execute if score *Night Game matches 1 run function fnaf:menu/night_1_start