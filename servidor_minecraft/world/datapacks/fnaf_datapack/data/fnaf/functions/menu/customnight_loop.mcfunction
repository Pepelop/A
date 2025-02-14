###Pos
tp @a[tag=!spectator] 72 44 173 -180 90
effect give @a[tag=!spectator] slowness 2 120 true
###Hotbar
execute as @a[tag=!spectator] unless data entity @s {SelectedItem:{tag:{UI:1b}}} run function fnaf:menu/hotbar
###UI
##Freddy
#Normal
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=!selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:29}
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=!selected] unless entity @e[tag=editing] run tag @s add selected
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:28}
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=selected] unless entity @e[tag=editing] run tag @s remove selected
#Editing
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=editing,tag=!minus] run item replace entity @s armor.head with paper{CustomModelData:30}
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=editing,tag=!minus] run tag @s add minus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_freddy,tag=editing,tag=minus] run item replace entity @s armor.head with paper{CustomModelData:33}
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=editing,tag=minus] run tag @s remove minus
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_freddy,tag=editing,tag=!plus] run item replace entity @s armor.head with paper{CustomModelData:31}
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_freddy,tag=editing,tag=!plus] run tag @s add plus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_freddy,tag=editing,tag=plus] run item replace entity @s armor.head with paper{CustomModelData:33}
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_freddy,tag=editing,tag=plus] run tag @s remove plus
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_freddy,tag=editing,tag=!exit] run item replace entity @s armor.head with paper{CustomModelData:32}
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_freddy,tag=editing,tag=!exit] run tag @s add exit
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_freddy,tag=editing,tag=exit] run item replace entity @s armor.head with paper{CustomModelData:33}
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_freddy,tag=editing,tag=exit] run tag @s remove exit
##Bonnie
#Normal
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=!selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:35}
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=!selected] unless entity @e[tag=editing] run tag @s add selected
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:34}
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=selected] unless entity @e[tag=editing] run tag @s remove selected
#Editing
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!minus] run item replace entity @s armor.head with paper{CustomModelData:36}
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!minus] run tag @s add minus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=minus] run item replace entity @s armor.head with paper{CustomModelData:39}
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_bonnie,tag=editing,tag=minus] run tag @s remove minus
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!plus] run item replace entity @s armor.head with paper{CustomModelData:37}
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=plus] run item replace entity @s armor.head with paper{CustomModelData:39}
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!plus] run tag @s add plus
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=editing,tag=plus] run tag @s remove plus
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!exit] run item replace entity @s armor.head with paper{CustomModelData:38}
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=!exit] run tag @s add exit
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=exit] run item replace entity @s armor.head with paper{CustomModelData:39}
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_bonnie,tag=editing,tag=exit] run tag @s remove exit
##Chica
#Normal
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=!selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:41}
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=!selected] unless entity @e[tag=editing] run tag @s add selected
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:40}
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=selected] unless entity @e[tag=editing] run tag @s remove selected
#Editing
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_chica,tag=editing,tag=!minus] run item replace entity @s armor.head with paper{CustomModelData:42}
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_chica,tag=editing,tag=!minus] run tag @s add minus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_chica,tag=editing,tag=minus] run item replace entity @s armor.head with paper{CustomModelData:45}
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_chica,tag=editing,tag=minus] run tag @s remove minus
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_chica,tag=editing,tag=!plus] run item replace entity @s armor.head with paper{CustomModelData:43}
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_chica,tag=editing,tag=!plus] run tag @s add plus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_chica,tag=editing,tag=plus] run item replace entity @s armor.head with paper{CustomModelData:45}
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_chica,tag=editing,tag=plus] run tag @s remove plus
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=editing,tag=!exit] run item replace entity @s armor.head with paper{CustomModelData:44}
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=editing,tag=!exit] run tag @s add exit
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_chica,tag=editing,tag=exit] run item replace entity @s armor.head with paper{CustomModelData:45}
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=editing,tag=exit] run tag @s remove exit
##Foxy
#Normal
execute if score *UISlot Game matches 4 as @e[tag=menu_customnight_foxy,tag=!selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:47}
execute if score *UISlot Game matches 4 as @e[tag=menu_customnight_foxy,tag=!selected] unless entity @e[tag=editing] run tag @s add selected
execute unless score *UISlot Game matches 4 as @e[tag=menu_customnight_foxy,tag=selected] unless entity @e[tag=editing] run item replace entity @s armor.head with paper{CustomModelData:46}
execute unless score *UISlot Game matches 4 as @e[tag=menu_customnight_foxy,tag=selected] unless entity @e[tag=editing] run tag @s remove selected
#Editing
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_foxy,tag=editing,tag=!minus] run item replace entity @s armor.head with paper{CustomModelData:48}
execute if score *UISlot Game matches 1 as @e[tag=menu_customnight_foxy,tag=editing,tag=!minus] run tag @s add minus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_foxy,tag=editing,tag=minus] run item replace entity @s armor.head with paper{CustomModelData:51}
execute unless score *UISlot Game matches 1 as @e[tag=menu_customnight_foxy,tag=editing,tag=minus] run tag @s remove minus
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_foxy,tag=editing,tag=!plus] run item replace entity @s armor.head with paper{CustomModelData:49}
execute if score *UISlot Game matches 2 as @e[tag=menu_customnight_foxy,tag=editing,tag=!plus] run tag @s add plus
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_foxy,tag=editing,tag=exit] run item replace entity @s armor.head with paper{CustomModelData:51}
execute unless score *UISlot Game matches 2 as @e[tag=menu_customnight_foxy,tag=editing,tag=plus] run tag @s remove plus
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_foxy,tag=editing,tag=!exit] run item replace entity @s armor.head with paper{CustomModelData:50}
execute if score *UISlot Game matches 3 as @e[tag=menu_customnight_foxy,tag=editing,tag=!exit] run tag @s add exit
execute unless score *UISlot Game matches 1..3 as @e[tag=menu_customnight_foxy,tag=editing,tag=plus] run item replace entity @s armor.head with paper{CustomModelData:51}
execute unless score *UISlot Game matches 3 as @e[tag=menu_customnight_foxy,tag=editing,tag=exit] run tag @s remove exit
##Randomize AI
execute if score *UISlot Game matches 5 as @e[tag=menu_customnight_randomize,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:59}
execute if score *UISlot Game matches 5 as @e[tag=menu_customnight_randomize,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 5 as @e[tag=menu_customnight_randomize,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:58}
execute unless score *UISlot Game matches 5 as @e[tag=menu_customnight_randomize,tag=selected] run tag @s remove selected
##Hard Mode
execute if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=!selected] if score *HardMode Game matches 0 run item replace entity @s armor.head with paper{CustomModelData:56}
execute if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=!selected] if score *HardMode Game matches 0 run tag @s add selected
execute unless score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=selected] if score *HardMode Game matches 0 run item replace entity @s armor.head with paper{CustomModelData:54}
execute unless score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=selected] if score *HardMode Game matches 0 run tag @s remove selected
execute if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=!selected] if score *HardMode Game matches 1 run item replace entity @s armor.head with paper{CustomModelData:57}
execute if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=!selected] if score *HardMode Game matches 1 run tag @s add selected
execute unless score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=selected] if score *HardMode Game matches 1 run item replace entity @s armor.head with paper{CustomModelData:55}
execute unless score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode,tag=selected] if score *HardMode Game matches 1 run tag @s remove selected
##Ready
execute if score *UISlot Game matches 7 as @e[tag=menu_customnight_ready,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:53}
execute if score *UISlot Game matches 7 as @e[tag=menu_customnight_ready,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 7 as @e[tag=menu_customnight_ready,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:52}
execute unless score *UISlot Game matches 7 as @e[tag=menu_customnight_ready,tag=selected] run tag @s remove selected
##Exit
execute if score *UISlot Game matches 9 as @e[tag=menu_customnight_exit,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:61}
execute if score *UISlot Game matches 9 as @e[tag=menu_customnight_exit,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 9 as @e[tag=menu_customnight_exit,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:60}
execute unless score *UISlot Game matches 9 as @e[tag=menu_customnight_exit,tag=selected] run tag @s remove selected
###Functions
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:0} unless score *UISlot Game matches 1 run scoreboard players set *UISlot Game 1
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:1} unless score *UISlot Game matches 2 run scoreboard players set *UISlot Game 2
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:2} unless score *UISlot Game matches 3 run scoreboard players set *UISlot Game 3
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:3} unless score *UISlot Game matches 4 run scoreboard players set *UISlot Game 4
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:4} unless score *UISlot Game matches 5 run scoreboard players set *UISlot Game 5
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:5} unless score *UISlot Game matches 6 run scoreboard players set *UISlot Game 6
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:6} unless score *UISlot Game matches 7 run scoreboard players set *UISlot Game 7
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:7} unless score *UISlot Game matches 8 run scoreboard players set *UISlot Game 8
execute as @a[tag=!spectator] if data entity @s {SelectedItemSlot:8} unless score *UISlot Game matches 9 run scoreboard players set *UISlot Game 9
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy] unless entity @e[tag=editing] run function fnaf:menu/customnight_editing_enter
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 as @e[tag=menu_customnight_freddy,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie] unless entity @e[tag=editing] run function fnaf:menu/customnight_editing_enter
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 as @e[tag=menu_customnight_bonnie,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica] unless entity @e[tag=editing] run function fnaf:menu/customnight_editing_enter
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 as @e[tag=menu_customnight_chica,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 4 as @e[tag=menu_customnight_foxy] unless entity @e[tag=editing] run function fnaf:menu/customnight_editing_enter
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 as @e[tag=menu_customnight_foxy,tag=editing] run function fnaf:menu/customnight_editing_exit
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=editing] if score *AI_Freddy Game matches 1.. run scoreboard players remove *AI_Freddy Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_freddy,tag=editing] run function fnaf:menu/ai_freddy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_freddy,tag=editing] if score *AI_Freddy Game matches ..19 run scoreboard players add *AI_Freddy Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_freddy,tag=editing] run function fnaf:menu/ai_freddy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_bonnie,tag=editing] if score *AI_Bonnie Game matches 1.. run scoreboard players remove *AI_Bonnie Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_bonnie,tag=editing] run function fnaf:menu/ai_bonnie
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=editing] if score *AI_Bonnie Game matches ..19 run scoreboard players add *AI_Bonnie Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_bonnie,tag=editing] run function fnaf:menu/ai_bonnie
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_chica,tag=editing] if score *AI_Chica Game matches 1.. run scoreboard players remove *AI_Chica Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_chica,tag=editing] run function fnaf:menu/ai_chica
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_chica,tag=editing] if score *AI_Chica Game matches ..19 run scoreboard players add *AI_Chica Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_chica,tag=editing] run function fnaf:menu/ai_chica
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_foxy,tag=editing] if score *AI_Foxy Game matches 1.. run scoreboard players remove *AI_Foxy Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 as @e[tag=menu_customnight_foxy,tag=editing] run function fnaf:menu/ai_foxy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_foxy,tag=editing] if score *AI_Foxy Game matches ..19 run scoreboard players add *AI_Foxy Game 1
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 as @e[tag=menu_customnight_foxy,tag=editing] run function fnaf:menu/ai_foxy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 5 run function fnaf:menu/ai_random
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 5 run function fnaf:menu/ai_freddy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 5 run function fnaf:menu/ai_bonnie
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 5 run function fnaf:menu/ai_chica
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 5 run function fnaf:menu/ai_foxy
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode] if score *HardMode Game matches 0 run function fnaf:menu/hardmode_on
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 6 as @e[tag=menu_customnight_hardmode] if score *HardMode Game matches 1 run function fnaf:menu/hardmode_off
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 7 run function fnaf:menu/night_7_start
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 9 run function fnaf:menu_start
scoreboard players reset @a RClickC