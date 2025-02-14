fill 103 45 162 104 42 162 air
fill 105 44 162 105 42 162 magenta_wool
execute as @e[tag=foxy] run function foxy:set_variant/invisible
execute as @e[tag=foxy] run function foxy:animations/stage_0/play
execute as @e[tag=foxy] positioned 97 42 174.0 rotated 90 0 run function foxy:move
execute as @e[tag=foxy] run function foxy:animations/stage_0/stop
item replace entity @e[tag=piratecove_sign] container.0 with light_gray_carpet

scoreboard players set *Pos_Foxy Game 4
scoreboard players reset *AI_Foxy Timer
scoreboard players set *FoxyAttack Timer 500

#tellraw @a {"text": "Foxy has moved to West Hall","color": "red"}