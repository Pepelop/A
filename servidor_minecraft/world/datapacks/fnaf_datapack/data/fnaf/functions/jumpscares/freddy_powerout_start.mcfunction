function fnaf:game_end
setblock 81 43 179 light[level=5]
scoreboard players set *JumpscareType Game 5
execute as @e[tag=freddy] run function freddy:animations/jumpscare_powerout/resume
scoreboard players set *PowerOutAttempts Timer 0