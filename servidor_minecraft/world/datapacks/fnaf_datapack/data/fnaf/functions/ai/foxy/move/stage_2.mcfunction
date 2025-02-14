fill 103 45 162 104 42 162 air
fill 105 44 162 105 42 162 magenta_wool
execute as @e[tag=foxy] run function foxy:set_variant/default
execute as @e[tag=foxy] run function foxy:animations/stage_2/play
execute as @e[tag=foxy] positioned 103.0 42 165.0 rotated 30 0 run function foxy:move
execute as @e[tag=foxy] run function foxy:animations/stage_2/stop
item replace entity @e[tag=piratecove_sign] container.0 with pink_carpet

scoreboard players set *Pos_Foxy Game 3
scoreboard players reset *AI_Foxy Timer

#tellraw @a {"text": "Foxy has moved to Stage 2"}