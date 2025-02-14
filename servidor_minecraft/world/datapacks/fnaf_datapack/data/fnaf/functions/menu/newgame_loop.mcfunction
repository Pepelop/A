scoreboard players add *Cutscene Timer 1
execute if score *Cutscene Timer matches 1..20 run tp @a 66 44 173 -180 90
execute if score *Cutscene Timer matches 1..220 run effect give @a slowness 2 120 true
execute if score *Cutscene Timer matches 1 run title @a times 20 0 20
execute if score *Cutscene Timer matches 1 run title @a title {"text": "\uC006"}
execute if score *Cutscene Timer matches 21..219 run tp @a 66 44 177 -180 90
execute if score *Cutscene Timer matches 200 run title @a times 20 10 0
execute if score *Cutscene Timer matches 200 run title @a title {"text": "\uC006"}
execute if score *Cutscene Timer matches 220 run function fnaf:menu/night_1_start
execute if score *Cutscene Timer matches 220 run scoreboard players set *NewGameCutscene Timer 0
execute if score *Cutscene Timer matches 220 run scoreboard players reset *Cutscene Timer