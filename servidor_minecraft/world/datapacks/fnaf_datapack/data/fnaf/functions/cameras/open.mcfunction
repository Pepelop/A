tag @s add openedcamera
tag @s remove openingcamera

execute unless score *CameraSide Game matches 1 run function fnaf:cameras/hotbar/left
execute if score *CameraSide Game matches 1 run function fnaf:cameras/hotbar/right

item replace entity @s weapon.offhand with paper{CamUI:1b,CustomModelData:6,display:{Name:'{"text":""}'}}
stopsound @a[tag=guard] master fnaf.fanloop
scoreboard players reset *FanSound Timer

execute if score *SavedCamera Game matches 5 if score *GoldenFreddy Game matches 1 run scoreboard players set *GoldenFreddy Timer 1
execute if score *SavedCamera Game matches 5 if score *GoldenFreddy Game matches 1 as @e[tag=gfreddy] run function gfreddy:set_variant/default
execute if score *SavedCamera Game matches 5 if score *GoldenFreddy Game matches 1 run playsound fnaf.gfreddy.laugh master @a 96 47 191 10
execute if score *SavedCamera Game matches 5 if score *GoldenFreddy Game matches 1 run item replace entity @e[tag=office_table] armor.head with nether_brick{CustomModelData:26}

execute if score *SavedCamera Game matches 4 if score *Pos_Foxy Game matches 4 if score *FoxyAttack Timer matches 60.. run function fnaf:ai/foxy/move/run_animation

execute unless score *LeftLight Game matches 1 unless score *RightLight Game matches 1 run scoreboard players add *Usage Game 1
execute unless score *Pos_Chica Game matches 8 as @e[tag=buttons_right] run function fnaf:buttons/right_light_off
execute unless score *Pos_Bonnie Game matches 8 as @e[tag=buttons_left] run function fnaf:buttons/left_light_off

execute if score *Pos_Bonnie Game matches 8 run function fnaf:ai/bonnie/move/office
execute if score *Pos_Chica Game matches 8 run function fnaf:ai/chica/move/office

function fnaf:blip/blip_camera