execute if score *AntiCheat Debug matches 1 run gamemode adventure @a[gamemode=!adventure,gamemode=!spectator]
execute if score *Started Game matches 1 run function fnaf:game_loop
execute if score *NightVision Debug matches 1 if score *Started Game matches 0 unless score *JumpscareType Game matches 1.. unless score *StartCutscene Timer matches 1 unless score *EndCutscene Timer matches 1 unless score *NewGameCutscene Timer matches 1 unless score *Ending Game matches 1..3 run effect give @a night_vision 3 1 true
effect give @a saturation 9999 100 true
effect give @e[tag=nose] invisibility 9999 1 true
effect give @e[tag=nose] instant_health 1 1 true
effect give @e[tag=buttons_left_hitbox] invisibility 9999 1 true
effect give @e[tag=buttons_left_hitbox] instant_health 1 1 true
effect give @e[tag=buttons_right_hitbox] invisibility 9999 1 true
effect give @e[tag=buttons_right_hitbox] instant_health 1 1 true
scoreboard players reset @a Jump
###UI
execute as @e[tag=begin,nbt={ItemRotation:1b}] run function fnaf:menu/disclaimer_fadein
data merge entity @e[tag=begin,limit=1,nbt=!{ItemRotation:0b}] {ItemRotation:0b}
execute if score *BlipType Timer matches 1.. run function fnaf:blip/loop

execute if score *UIState Game matches 1 run function fnaf:menu/main_loop
execute if score *UIState Game matches 2 run function fnaf:menu/customnight_loop

execute if score *StartCutscene Timer matches 1 run function fnaf:menu/night_start_loop
execute if score *EndCutscene Timer matches 1 run function fnaf:menu/night_end_loop
execute if score *DisclaimerCutscene Timer matches 1 run function fnaf:menu/disclaimer_loop
execute if score *NewGameCutscene Timer matches 1 run function fnaf:menu/newgame_loop
execute if score *Ending Game matches 1..3 run function fnaf:menu/ending_loop
execute if score *MenuMusic Game matches 1 unless score *StartCutscene Timer matches 1 unless score *EndCutscene Timer matches 1 run function fnaf:menu/music
###Jumpscares
execute as @a[tag=openingcamera] at @s run function fnaf:cameras/open_animation/loop
execute as @a[tag=closingcamera] at @s run function fnaf:cameras/close_animation/loop

execute if score *JumpscareType Game matches 1 run function fnaf:jumpscares/bonnie_loop
execute if score *JumpscareType Game matches 2 run function fnaf:jumpscares/chica_loop
execute if score *JumpscareType Game matches 3 run function fnaf:jumpscares/freddy_office_loop
execute if score *JumpscareType Game matches 4 run function fnaf:jumpscares/foxy_loop
execute if score *JumpscareType Game matches 5 run function fnaf:jumpscares/freddy_powerout_loop
execute if score *JumpscareType Game matches 6 run function fnaf:jumpscares/gfreddy_loop
###Invisibility
execute if score *StartCutscene Timer matches 1 run effect give @a invisibility 1 1 true
execute if score *EndCutscene Timer matches 1 run effect give @a invisibility 1 1 true
execute if score *NewGameCutscene Timer matches 1 run effect give @a invisibility 1 1 true
execute if score *DisclaimerCutscene Timer matches 1 run effect give @a invisibility 1 1 true
execute if score *JumpscareType Game matches 1..6 run effect give @a invisibility 1 1 true
execute if score *Ending Game matches 1..3 run effect give @a invisibility 1 1 true
###Leave the map
execute as @e[scores={Leave=1..}] run function fnaf:leave