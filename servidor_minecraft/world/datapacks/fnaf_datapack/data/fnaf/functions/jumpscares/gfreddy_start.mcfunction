function fnaf:game_end
scoreboard players reset *GoldenFreddy Timer
execute as @e[tag=gfreddy] run function gfreddy:set_variant/invisible
scoreboard players set *MenuMusic Game 0
scoreboard players set *JumpscareType Game 6