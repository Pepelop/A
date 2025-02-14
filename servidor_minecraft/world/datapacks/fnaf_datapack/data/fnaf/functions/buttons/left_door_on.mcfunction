execute if score *LeftLight Game matches 0 run item replace entity @s container.0 with firework_star{CustomModelData:2}
execute if score *LeftLight Game matches 1 run item replace entity @s container.0 with firework_star{CustomModelData:4}
scoreboard players add *Usage Game 1
scoreboard players set *LeftDoor Game 1
playsound fnaf.door master @a 83 42 176 1 1
execute as @e[tag=left_door] run function left_door:animations/open/stop
execute as @e[tag=left_door] run function left_door:animations/close/play
data merge entity @e[tag=button_door_left,limit=1] {ItemRotation:0b,Fixed:1b}
tag @e[tag=buttons_left] add cd
schedule function fnaf:buttons/left_cd 0.4s replace