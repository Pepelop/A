function fnaf:game_end
setblock 81 43 179 light[level=5]
scoreboard players set *JumpscareType Game 2
execute as @e[tag=chica] run function chica:set_variant/default
execute as @e[tag=chica] run function chica:animations/jumpscare/resume