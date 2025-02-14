###Pos
tp @a[tag=!spectator] 66 44 173 -180 90
effect give @a[tag=!spectator] slowness 2 120 true
###Hotbar
execute as @a[tag=!spectator] unless data entity @s {SelectedItem:{tag:{UI:1b}}} run function fnaf:menu/hotbar
###UI
#NewGame
execute if score *UISlot Game matches 1 as @e[tag=menu_newgame,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:18}
execute if score *UISlot Game matches 1 as @e[tag=menu_newgame,tag=!selected] run playsound fnaf.blip master @a 137 43 194 10
execute if score *UISlot Game matches 1 as @e[tag=menu_newgame,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 1 as @e[tag=menu_newgame,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:17}
execute unless score *UISlot Game matches 1 as @e[tag=menu_newgame,tag=selected] run tag @s remove selected
#Continue
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] if score *Night Game matches 1 run item replace entity @s armor.head with paper{CustomModelData:11}
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] if score *Night Game matches 2 run item replace entity @s armor.head with paper{CustomModelData:12}
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] if score *Night Game matches 3 run item replace entity @s armor.head with paper{CustomModelData:13}
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] if score *Night Game matches 4 run item replace entity @s armor.head with paper{CustomModelData:14}
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] if score *Night Game matches 5 run item replace entity @s armor.head with paper{CustomModelData:15}
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] run playsound fnaf.blip master @a 137 43 194 10
execute if score *UISlot Game matches 2 as @e[tag=menu_continue,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 2 as @e[tag=menu_continue,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:16}
execute unless score *UISlot Game matches 2 as @e[tag=menu_continue,tag=selected] run tag @s remove selected
#6thNight
execute if score *UISlot Game matches 3 as @e[tag=menu_6thnight,tag=unlocked,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:20}
execute if score *UISlot Game matches 3 as @e[tag=menu_6thnight,tag=unlocked,tag=!selected] run playsound fnaf.blip master @a 137 43 194 10
execute if score *UISlot Game matches 3 as @e[tag=menu_6thnight,tag=unlocked,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 3 as @e[tag=menu_6thnight,tag=unlocked,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:19}
execute unless score *UISlot Game matches 3 as @e[tag=menu_6thnight,tag=unlocked,tag=selected] run tag @s remove selected
#CustomNight
execute if score *UISlot Game matches 4 as @e[tag=menu_customnight,tag=unlocked,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:26}
execute if score *UISlot Game matches 4 as @e[tag=menu_customnight,tag=unlocked,tag=!selected] run playsound fnaf.blip master @a 137 43 194 10
execute if score *UISlot Game matches 4 as @e[tag=menu_customnight,tag=unlocked,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 4 as @e[tag=menu_customnight,tag=unlocked,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:25}
execute unless score *UISlot Game matches 4 as @e[tag=menu_customnight,tag=unlocked,tag=selected] run tag @s remove selected
#Rules
execute if score *UISlot Game matches 9 as @e[tag=menu_rules,tag=!selected] run item replace entity @s armor.head with paper{CustomModelData:68}
execute if score *UISlot Game matches 9 as @e[tag=menu_rules,tag=!selected] run playsound fnaf.blip master @a 137 43 194 10
execute if score *UISlot Game matches 9 as @e[tag=menu_rules,tag=!selected] run tag @s add selected
execute unless score *UISlot Game matches 9 as @e[tag=menu_rules,tag=selected] run item replace entity @s armor.head with paper{CustomModelData:67}
execute unless score *UISlot Game matches 9 as @e[tag=menu_rules,tag=selected] run tag @s remove selected
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
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 1 run function fnaf:menu/newgame
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 2 run function fnaf:menu/continue
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 3 if entity @e[tag=menu_6thnight,tag=unlocked] run function fnaf:menu/night_6_start
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 4 if entity @e[tag=menu_customnight,tag=unlocked] run function fnaf:menu/customnight
execute as @e[tag=!spectator,scores={RClickC=0..}] if score *UISlot Game matches 9 run function fnaf:menu/rules
scoreboard players reset @a RClickC