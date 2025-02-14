execute as @e[tag=freddy] run function freddy:set_variant/invisible
execute as @e[tag=freddy] run function freddy:animations/jumpscare_office/play
execute as @e[tag=freddy] positioned 82 41.1 180.3 rotated 90 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/jumpscare_office/pause

scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 7
stopsound @a master fnaf.freddy.laugh
playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 0.8