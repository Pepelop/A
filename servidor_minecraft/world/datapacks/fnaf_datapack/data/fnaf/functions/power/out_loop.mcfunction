
scoreboard players add *PowerOut Timer 1
execute if score *PowerOutStage Timer matches 2 run title @a title {"text": "\uC006"}

#execute if score *PowerOut Timer matches 80 run tellraw @a [{"text": "[BEFORE] Power Out Stage is "},{"score":{"name": "*PowerOutStage","objective":"Timer"}},{"text": ", Attempts number is "},{"score":{"name": "*PowerOutAttempts","objective":"Timer"}}]

execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 2 run function fnaf:random/5
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 2 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 0 run playsound fnaf.steps master @a 96 47 191 10
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 2 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 0..4 run scoreboard players add *PowerOutAttempts Timer 1
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 2 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 5 run function fnaf:jumpscares/freddy_powerout_start
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 2 if score *5Random Random matches 5 run function fnaf:jumpscares/freddy_powerout_start

execute if score *PowerOutStage Timer matches 1 run function fnaf:power/out_freddy_light
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 1 run function fnaf:random/5
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 1 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 0..4 run scoreboard players add *PowerOutAttempts Timer 1
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 1 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 5 run scoreboard players set *PowerOutSteps Timer 0
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 1 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 5 run function fnaf:power/out_stages/2
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 1 if score *5Random Random matches 5 run function fnaf:power/out_stages/2

execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 0 run function fnaf:random/5
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 0 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 0 run playsound fnaf.steps master @a 96 47 191 10
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 0 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 0..4 run scoreboard players add *PowerOutAttempts Timer 1
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 0 if score *5Random Random matches 1..4 if score *PowerOutAttempts Timer matches 5 run function fnaf:power/out_stages/1
execute if score *PowerOut Timer matches 80 if score *PowerOutStage Timer matches 0 if score *5Random Random matches 5 run function fnaf:power/out_stages/1

#execute if score *PowerOut Timer matches 80 run tellraw @a [{"text": "[AFTER] Power Out Stage is "},{"score":{"name": "*PowerOutStage","objective":"Timer"}},{"text": ", Attempts number is "},{"score":{"name": "*PowerOutAttempts","objective":"Timer"}}]

execute if score *PowerOut Timer matches 80 run scoreboard players reset *PowerOut Timer


