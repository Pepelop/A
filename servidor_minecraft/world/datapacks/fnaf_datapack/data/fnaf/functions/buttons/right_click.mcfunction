#execute as @e[tag=button_door_right,nbt=!{ItemRotation:0b}] if score *RightBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
#execute as @e[tag=button_door_right,nbt=!{ItemRotation:0b}] if score *RightBlocked Game matches 1 run data merge entity @e[tag=button_door_right,limit=1] {ItemRotation:0b}
#execute as @e[tag=button_door_right,nbt=!{ItemRotation:0b}] unless score *RightBlocked Game matches 1 if score *RightDoor Game matches 0 run function fnaf:buttons/right_door_on
#execute as @e[tag=button_door_right,nbt=!{ItemRotation:0b}] unless score *RightBlocked Game matches 1 if score *RightDoor Game matches 1 run function fnaf:buttons/right_door_off
#execute as @e[tag=button_light_right,nbt=!{ItemRotation:0b}] if score *RightBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
#execute as @e[tag=button_light_right,nbt=!{ItemRotation:0b}] if score *RightBlocked Game matches 1 run data merge entity @e[tag=button_light_right,limit=1] {ItemRotation:0b}
#execute as @e[tag=button_light_right,nbt=!{ItemRotation:0b}] unless score *RightBlocked Game matches 1 if score *RightLight Game matches 0 run function fnaf:buttons/right_light_on
#execute as @e[tag=button_light_right,nbt=!{ItemRotation:0b}] unless score *RightBlocked Game matches 1 if score *RightLight Game matches 1 run function fnaf:buttons/right_light_off

##Door
##X -7.4..0.0 and 0.0..1.6 (Converted = -74..16)
##Y -17.5..-8.8 (Converted = -175..-88)
##Light
##X 7.4..0.0 and 0.0..1.6 (Converted = -74..16)
##Y -4.6..4.4 (Converted = -46..44)



execute store result score *XR Timer run data get entity @s Rotation[0] 10
execute store result score *YR Timer run data get entity @s Rotation[1] 10
######################DOOR
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -175..-88 if score *RightBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -175..-88 unless score *RightBlocked Game matches 1 if score *RightDoor Game matches 0 as @e[tag=buttons_right,tag=!cd] run function fnaf:buttons/right_door_on
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -175..-88 unless score *RightBlocked Game matches 1 if score *RightDoor Game matches 1 as @e[tag=buttons_right,tag=!cd] run function fnaf:buttons/right_door_off
######################LIGHT
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -46..44 if score *RightBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -46..44 unless score *RightBlocked Game matches 1 if score *RightLight Game matches 0 as @e[tag=buttons_right,tag=!cd] run function fnaf:buttons/right_light_on
execute if score *Power Game matches 1.. if score *XR Timer matches -74..16 if score *YR Timer matches -46..44 unless score *RightBlocked Game matches 1 if score *RightLight Game matches 1 as @e[tag=buttons_right,tag=!cd] run function fnaf:buttons/right_light_off
advancement revoke @s only fnaf:buttons_right