scoreboard players set *JumpscareType Game 3
function fnaf:game_end
execute as @e[tag=aj.freddy,type=minecraft:armor_stand] run data merge entity @s {Marker:0b}
execute as @e[tag=freddy] run function freddy:set_variant/default_creepy
execute as @e[tag=freddy] run function freddy:animations/jumpscare_office/resume