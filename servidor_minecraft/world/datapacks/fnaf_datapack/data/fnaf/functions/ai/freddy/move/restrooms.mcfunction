execute as @e[tag=freddy] run function freddy:set_variant/default_creepy
execute as @e[tag=freddy] run function freddy:animations/restrooms/play
execute as @e[tag=freddy] positioned 113.55 42 202.6 rotated -155 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/restrooms/stop

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 3
function fnaf:ai/freddy/cooldown
stopsound @a master fnaf.freddy.laugh
playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 0.8
scoreboard players reset *Freddy_MovementSchedule Game