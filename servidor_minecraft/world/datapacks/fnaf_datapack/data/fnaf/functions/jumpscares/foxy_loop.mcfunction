scoreboard players add *Jumpscare Timer 1
execute if score *Jumpscare Timer matches 1 run playsound fnaf.xscream master @a 81 43 179 20
execute if score *Jumpscare Timer matches 1..25 run tp @a 81 42 179 -135 0
execute if score *Jumpscare Timer matches 27 run function fnaf:ai/bonnie/move/show_stage
execute if score *Jumpscare Timer matches 26 run scoreboard players reset *Shake Timer
execute if score *Jumpscare Timer matches 26 run stopsound @a master fnaf.xscream
execute if score *Jumpscare Timer matches 26 run function fnaf:blip/blip_nosound
execute if score *Jumpscare Timer matches 26 run playsound fnaf.static master @a 81 48 179
execute if score *Jumpscare Timer matches 26 run playsound fnaf.ambience2 master @a 81 43 179 15
execute if score *Jumpscare Timer matches 26 run clear @a
execute if score *Jumpscare Timer matches 26 run function fnaf:decorations/backstage/game_over
execute if score *Jumpscare Timer matches 27 as @e[tag=foxy] run function foxy:set_variant/invisible
execute if score *Jumpscare Timer matches 26..250 run tp @a 81 48 179.7 -180 0
execute if score *Jumpscare Timer matches 240 run title @a times 10 1 10
execute if score *Jumpscare Timer matches 240 run title @a title {"text": "\uC006"}
execute if score *Jumpscare Timer matches 251..351 run title @a actionbar {"text":"\uF82D\uF82C\uC018"}
execute if score *Jumpscare Timer matches 251..351 run tp @a 112.0 43.4 161 -111 10
execute if score *Jumpscare Timer matches 352 run function fnaf:menu_start
execute if score *Jumpscare Timer matches 352 run scoreboard players set *JumpscareType Game 0
execute if score *Jumpscare Timer matches 352 run scoreboard players reset *Jumpscare Timer
