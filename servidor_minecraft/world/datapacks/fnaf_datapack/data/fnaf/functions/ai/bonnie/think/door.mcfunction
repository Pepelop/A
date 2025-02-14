execute if score *LeftDoor Game matches 0 unless entity @a[tag=openedcamera] run function fnaf:ai/bonnie/move/door_block
execute if score *LeftDoor Game matches 0 if entity @a[tag=openedcamera] run function fnaf:ai/bonnie/move/office
execute if score *LeftDoor Game matches 1 run function fnaf:ai/bonnie/move/dining_area
scoreboard players reset *AI_Bonnie Timer