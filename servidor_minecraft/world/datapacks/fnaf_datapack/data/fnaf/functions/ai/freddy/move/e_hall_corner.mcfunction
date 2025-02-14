execute as @e[tag=freddy] run function freddy:set_variant/default_creepy
execute as @e[tag=freddy] run function freddy:animations/e_hall_corner/play
execute as @e[tag=freddy] positioned 79.4 42.5 183.8 rotated -95 -35 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/e_hall_corner/stop

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 6
function fnaf:ai/freddy/cooldown
stopsound @a master fnaf.freddy.laugh
execute if score *HardMode Game matches 0 run playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3
execute if score *HardMode Game matches 1 run playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3 0.95
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 1
scoreboard players reset *Freddy_MovementSchedule Game
