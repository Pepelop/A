#tellraw @a {"text": "Foxy went back","color": "green"}
execute as @e[tag=foxy] run function foxy:set_variant/default
function fnaf:random/3
execute if score *3Random Random matches 1 run function fnaf:ai/foxy/move/stage_0
execute if score *3Random Random matches 2 run function fnaf:ai/foxy/move/stage_1
execute if score *3Random Random matches 3 run function fnaf:ai/foxy/move/stage_2
playsound fnaf.doorknocking master @a 81 42 179 10
scoreboard players operation *Power Game -= *Foxy_PowerPenalty Game
execute if score *Power Game matches ..0 run scoreboard players set *Power Game 0
execute if score *Power Game matches ..0 run function fnaf:power/out
scoreboard players add *Foxy_PowerPenalty Game 50
execute if score *SavedCamera Game matches 3 if entity @a[tag=openedcamera] run function fnaf:cameras/error_start