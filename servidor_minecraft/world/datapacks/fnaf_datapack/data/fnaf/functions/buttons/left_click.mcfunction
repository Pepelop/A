#execute as @e[tag=button_door_left,nbt=!{ItemRotation:0b}] if score *LeftBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
#execute as @e[tag=button_door_left,nbt=!{ItemRotation:0b}] if score *LeftBlocked Game matches 1 run data merge entity @e[tag=button_door_left,limit=1] {ItemRotation:0b}
#execute as @e[tag=button_door_left,nbt=!{ItemRotation:0b}] unless score *LeftBlocked Game matches 1 if score *LeftDoor Game matches 0 run function fnaf:buttons/left_door_on
#execute as @e[tag=button_door_left,nbt=!{ItemRotation:0b}] unless score *LeftBlocked Game matches 1 if score *LeftDoor Game matches 1 run function fnaf:buttons/left_door_off
#execute as @e[tag=button_light_left,nbt=!{ItemRotation:0b}] if score *LeftBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
#execute as @e[tag=button_light_left,nbt=!{ItemRotation:0b}] if score *LeftBlocked Game matches 1 run data merge entity @e[tag=button_light_left,limit=1] {ItemRotation:0b}
#execute as @e[tag=button_light_left,nbt=!{ItemRotation:0b}] unless score *LeftBlocked Game matches 1 if score *LeftLight Game matches 0 run function fnaf:buttons/left_light_on
#execute as @e[tag=button_light_left,nbt=!{ItemRotation:0b}] unless score *LeftBlocked Game matches 1 if score *LeftLight Game matches 1 run function fnaf:buttons/left_light_off

##Door
##X 178.5..-172.4 (Converted = 1785..1799 and -1800..-1724 OR unless -1723..1784)
##Y -17.5..-8.8 (Converted = -175..-88)
##Light
##X 178.5..-172.4 (Converted = 1785..1799 and -1800..-1724 OR unless -1723..1784)
##Y -4.6..4.4 (Converted = -46..44)



execute store result score *XR Timer run data get entity @s Rotation[0] 10
execute store result score *YR Timer run data get entity @s Rotation[1] 10
######################DOOR
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -175..-88 if score *LeftBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -175..-88 unless score *LeftBlocked Game matches 1 if score *LeftDoor Game matches 0 as @e[tag=buttons_left,tag=!cd] run function fnaf:buttons/left_door_on
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -175..-88 unless score *LeftBlocked Game matches 1 if score *LeftDoor Game matches 1 as @e[tag=buttons_left,tag=!cd] run function fnaf:buttons/left_door_off
######################LIGHT
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -46..44 if score *LeftBlocked Game matches 1 run playsound fnaf.errorclick ambient @a 81 42 179
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -46..44 unless score *LeftBlocked Game matches 1 if score *LeftLight Game matches 0 as @e[tag=buttons_left,tag=!cd] run function fnaf:buttons/left_light_on
execute if score *Power Game matches 1.. unless score *XR Timer matches -1723..1784 if score *YR Timer matches -46..44 unless score *LeftBlocked Game matches 1 if score *LeftLight Game matches 1 as @e[tag=buttons_left,tag=!cd] run function fnaf:buttons/left_light_off
advancement revoke @s only fnaf:buttons_left