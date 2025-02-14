scoreboard players set *AI Game 0
scoreboard players set *PowerOutAttempts Timer 0
scoreboard players set *Power Game 0
stopsound @a master
execute as @a[tag=guard,tag=openedcamera] at @s run function fnaf:cameras/close_animation/start
execute as @e[tag=buttons_left] if score *LeftDoor Game matches 1 run function fnaf:buttons/left_door_off
execute as @e[tag=buttons_right] if score *RightDoor Game matches 1 run function fnaf:buttons/right_door_off
execute as @e[tag=buttons_left] if score *LeftLight Game matches 1 run function fnaf:buttons/left_light_off
execute as @e[tag=buttons_right] if score *RightLight Game matches 1 run function fnaf:buttons/right_light_off
tag @e[tag=buttons_left] remove cd
tag @e[tag=buttons_right] remove cd
setblock 85 42 179 air
setblock 81 44 178 air
setblock 81 44 180 air
time set 12000
item replace entity @e[tag=office_table] armor.head with nether_brick{CustomModelData:24}
scoreboard players set *GoldenFreddy Game 0
scoreboard players reset *GoldenFreddy Timer
scoreboard players set *PowerOutSteps Timer 0
item replace entity @e[tag=gfreddy] armor.head with air
playsound fnaf.powerdown master @a 81 43 179 10
stopsound @a master fnaf.fanloop
title @a times 0 20 0
title @a actionbar {"text": ""}
title @a subtitle {"text": ""}
title @a title {"text": ""}
effect give @a[tag=guard] minecraft:jump_boost 9999 250 true