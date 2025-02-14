fill 103 45 162 103 42 162 magenta_wool
fill 104 45 162 104 42 162 air
fill 105 44 162 105 42 162 magenta_wool
setblock 104 44 162 light[level=2]
execute as @e[tag=foxy] run function foxy:set_variant/default
execute as @e[tag=foxy] run function foxy:animations/stage_1/play
execute as @e[tag=foxy] positioned 104.0 42 161 rotated -26 0 run function foxy:move
execute as @e[tag=foxy] run function foxy:animations/stage_1/stop
item replace entity @e[tag=piratecove_sign] container.0 with pink_carpet

scoreboard players set *Pos_Foxy Game 2
scoreboard players reset *AI_Foxy Timer

#tellraw @a {"text": "Foxy has moved to Stage 1"}