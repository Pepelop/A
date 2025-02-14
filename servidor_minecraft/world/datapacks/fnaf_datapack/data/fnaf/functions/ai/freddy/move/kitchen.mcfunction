execute as @e[tag=freddy] run function freddy:set_variant/default_glowing
execute as @e[tag=freddy] positioned 96 47 191 rotated -90 0 run function freddy:move

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 4
function fnaf:ai/freddy/cooldown
stopsound @a master fnaf.freddy.laugh
playsound fnaf.freddy.laugh master @a 105 47 179 3
playsound fnaf.freddy.musicbox_kitchen master @a 96 44 191 2.2
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 0.8
scoreboard players reset *Freddy_MovementSchedule Game