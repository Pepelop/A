scoreboard players add *Cutscene Timer 1
execute if score *Cutscene Timer matches 1 run title @a times 0 36 20
execute if score *Cutscene Timer matches 6 if score *Night Game matches 1 run title @a title {"text": "\uC008"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 2 run title @a title {"text": "\uC009"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 3 run title @a title {"text": "\uC010"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 4 run title @a title {"text": "\uC011"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 5 run title @a title {"text": "\uC012"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 6 run title @a title {"text": "\uC013"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 7 if score *HardMode Game matches 0 run title @a title {"text": "\uC014"}
execute if score *Cutscene Timer matches 6 if score *Night Game matches 7 if score *HardMode Game matches 1 run title @a title {"text": "\uC015"}
execute if score *Cutscene Timer matches 1..100 run tp @a 81 52 179
execute if score *Cutscene Timer matches 101 run function fnaf:game_start
execute if score *Cutscene Timer matches 101 run scoreboard players set *StartCutscene Timer 0
execute if score *Cutscene Timer matches 101 run scoreboard players reset *Cutscene Timer