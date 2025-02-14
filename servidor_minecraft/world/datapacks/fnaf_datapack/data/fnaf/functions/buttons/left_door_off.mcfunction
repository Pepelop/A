execute if score *LeftLight Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:1}
execute if score *LeftLight Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:3}
scoreboard players remove *Usage Game 1
scoreboard players set *LeftDoor Game 0
playsound fnaf.door master @a 83 42 176 1 1
execute as @e[tag=left_door] run function left_door:animations/close/stop
execute as @e[tag=left_door] run function left_door:animations/open/play
data merge entity @e[tag=button_door_left,limit=1] {ItemRotation:0b,Fixed:1b}
tag @e[tag=buttons_left] add cd
schedule function fnaf:buttons/left_cd 0.4s replace