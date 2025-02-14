execute as @e[tag=freddy] run function freddy:set_variant/default_glowing
execute as @e[tag=freddy] run function freddy:animations/dining_area/play
execute as @e[tag=freddy] positioned 105 42 181.0 rotated -90 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/dining_area/stop

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 2
function fnaf:ai/freddy/cooldown
stopsound @a master fnaf.freddy.laugh
playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 0.8
scoreboard players reset *Freddy_MovementSchedule Game