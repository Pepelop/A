execute as @a[tag=guard,tag=openingcamera] run function fnaf:cameras/close_animation/start
execute as @a[tag=guard,tag=openedcamera] run function fnaf:cameras/close_animation/start
execute as @e[tag=foxy] run function foxy:set_variant/default
execute as @e[tag=foxy] run function foxy:animations/jumpscare/play
function fnaf:game_end
scoreboard players set *JumpscareType Game 4