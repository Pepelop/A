execute as @e[tag=freddy] run function freddy:set_variant/default_glowing
execute as @e[tag=freddy] run function freddy:animations/east_hall/play
execute as @e[tag=freddy] positioned 93.7 42 184 rotated 90 0 run function freddy:move
execute as @e[tag=freddy] run function freddy:animations/east_hall/stop


execute if score *Pos_Freddy Game matches 6 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 7 run function fnaf:cameras/error_start
scoreboard players reset *AI_Freddy Timer
scoreboard players set *Pos_Freddy Game 5
function fnaf:ai/freddy/cooldown
stopsound @a master fnaf.freddy.musicbox_kitchen
playsound minecraft:fnaf.freddy.laugh master @a 105 47 179 3
execute as @a at @s run playsound minecraft:fnaf.steps.fast master @s ~ ~ ~ 1
scoreboard players reset *Freddy_MovementSchedule Game