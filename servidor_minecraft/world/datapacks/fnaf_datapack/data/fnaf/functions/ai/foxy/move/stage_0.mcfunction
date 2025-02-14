fill 103 45 162 104 42 162 magenta_wool
setblock 105 44 162 red_wool
fill 105 43 162 105 42 162 lime_wool
execute as @e[tag=foxy] run function foxy:set_variant/default
execute as @e[tag=foxy] run function foxy:animations/stage_0/play
execute as @e[tag=foxy] positioned 104 43 159 rotated 0 0 run function foxy:move
execute as @e[tag=foxy] run function foxy:animations/stage_0/stop
item replace entity @e[tag=piratecove_sign] container.0 with pink_carpet

scoreboard players set *Pos_Foxy Game 1
scoreboard players reset *AI_Foxy Timer

#tellraw @a {"text": "Foxy has moved to Stage 0"}