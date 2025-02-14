scoreboard players add *Ending Timer 1 
execute if score *Ending Timer matches 1..400 run tp @a 72 44 177 180 90
execute if score *Ending Timer matches 1..400 run effect give @a slowness 2 120 true
execute if score *Ending Timer matches 1 run playsound fnaf.freddy.musicbox master @a 120 49 179 10 1
execute if score *Ending Timer matches 1 run title @a times 0 0 20
execute if score *Ending Timer matches 1 run title @a title {"text": "\uC006"}
execute if score *Ending Timer matches 380 run title @a times 20 1 0
execute if score *Ending Timer matches 380 run title @a title {"text": "\uC006"}
execute if score *Ending Timer matches 400 if score *Ending Game matches 1 run summon armor_stand 66 41.21 173 {Tags:["menu_star1"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:paper",tag:{CustomModelData:21}}]}
execute if score *Ending Timer matches 400 if score *Ending Game matches 2 run summon armor_stand 66 41.21 173 {Tags:["menu_star2"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:paper",tag:{CustomModelData:22}}]}
execute if score *Ending Timer matches 400 if score *Ending Game matches 3 run summon armor_stand 66 41.21 173 {Tags:["menu_star3"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:paper",tag:{CustomModelData:23}}]}
execute if score *Ending Timer matches 400 run stopsound @a master fnaf.freddy.musicbox
execute if score *Ending Timer matches 400 run function fnaf:menu_start
execute if score *Ending Timer matches 400 run scoreboard players set *Ending Game 0
execute if score *Ending Timer matches 400 run scoreboard players set *Ending Timer 0