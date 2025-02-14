function fnaf:game_end
setblock 81 43 179 light[level=5]
scoreboard players set *JumpscareType Game 1
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] run function bonnie:animations/jumpscare/resume
