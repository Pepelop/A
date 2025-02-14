tag @s remove editing
tag @s remove minus
tag @s remove plus
tag @s remove exit
scoreboard players reset @a RClickC
item replace entity @e[tag=menu_customnight_freddy] armor.head with paper{CustomModelData:28}
item replace entity @e[tag=menu_customnight_bonnie] armor.head with paper{CustomModelData:34}
execute unless entity @s[tag=menu_customnight_chica] run item replace entity @e[tag=menu_customnight_chica] armor.head with paper{CustomModelData:40}
item replace entity @e[tag=menu_customnight_foxy] armor.head with paper{CustomModelData:46}