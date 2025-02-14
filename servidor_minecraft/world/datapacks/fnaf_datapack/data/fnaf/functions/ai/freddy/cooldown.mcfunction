scoreboard players set *MovementCoolDown_Freddy Game 20
scoreboard players operation *MovementCoolDown_Freddy Game -= *AI_Freddy Game
scoreboard players operation *MovementCoolDown_Freddy Game -= *AI_Freddy Game
scoreboard players operation *MovementCoolDown_Freddy Game *= *20 CONST
execute if score *MovementCoolDown_Freddy Game matches ..-1 run scoreboard players set *MovementCoolDown_Freddy Game 0

#tellraw @a [{"text": "[Server] freddy cooldown is "},{"score":{"name": "*MovementCoolDown_Freddy","objective": "Game"}}]