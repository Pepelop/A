tag @s add editing
tag @s remove selected
scoreboard players reset @a RClickC
execute unless entity @s[tag=menu_customnight_freddy] run item replace entity @e[tag=menu_customnight_freddy] armor.head with air
execute unless entity @s[tag=menu_customnight_bonnie] run item replace entity @e[tag=menu_customnight_bonnie] armor.head with air
execute unless entity @s[tag=menu_customnight_chica] run item replace entity @e[tag=menu_customnight_chica] armor.head with air
execute unless entity @s[tag=menu_customnight_foxy] run item replace entity @e[tag=menu_customnight_foxy] armor.head with air
execute if entity @s[tag=menu_customnight_foxy] run item replace entity @s armor.head with paper{CustomModelData:51}