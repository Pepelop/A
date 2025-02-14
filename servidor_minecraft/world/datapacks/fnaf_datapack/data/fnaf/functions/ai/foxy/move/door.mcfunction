execute as @e[tag=foxy] run function foxy:set_variant/invisible
execute as @e[tag=foxy] run function foxy:animations/jumpscare/play
execute as @e[tag=foxy] positioned 82 42 176.0 rotated 65 0 run function foxy:move
execute as @e[tag=foxy] run function foxy:animations/jumpscare/stop

#tellraw @a {"text": "Foxy has moved to the Door","color": "yellow"}