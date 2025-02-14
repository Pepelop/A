kill @e[tag=menu_star1]
kill @e[tag=menu_star2]
kill @e[tag=menu_star3]
kill @e[tag=menu_star4]

tag @a remove seen_hint

item replace entity @e[tag=menu_6thnight] armor.head with air
item replace entity @e[tag=menu_customnight] armor.head with air
tag @e[tag=menu_6thnight] remove unlocked
tag @e[tag=menu_customnight] remove unlocked


item replace entity @e[tag=plushies1] container.0 with air
item replace entity @e[tag=plushies2] container.0 with air
item replace entity @e[tag=plushies3] container.0 with air
scoreboard players set *NewGameCutscene Timer 1
clear @s
scoreboard players set *UIState Game 0