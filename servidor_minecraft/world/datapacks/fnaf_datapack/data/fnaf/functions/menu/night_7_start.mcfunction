clear @s
scoreboard players set *UIState Game 0
scoreboard players set *Night Game 7
execute if score *AI_Freddy Game matches 1 if score *AI_Bonnie Game matches 9 if score *AI_Chica Game matches 8 if score *AI_Foxy Game matches 7 run function fnaf:jumpscares/gfreddy_start
execute as @e[tag=menu_customnight_freddy,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=menu_customnight_bonnie,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=menu_customnight_chica,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=menu_customnight_foxy,tag=editing] run function fnaf:menu/customnight_editing_exit
execute unless score *JumpscareType Game matches 1.. run function fnaf:menu/night_start