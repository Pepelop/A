function fnaf:random/2
execute if score *2Random Random matches 1 run function fnaf:ai/chica/move/east_hall
execute if score *2Random Random matches 2 run function fnaf:ai/chica/move/door
scoreboard players reset *AI_Chica Timer
stopsound @a master fnaf.robotvoice_chica