execute if score *RightDoor Game matches 0 unless entity @a[tag=openedcamera] run function fnaf:ai/chica/move/door_block
execute if score *RightDoor Game matches 0 if entity @a[tag=openedcamera] run function fnaf:ai/chica/move/office
execute if score *RightDoor Game matches 1 run function fnaf:ai/chica/move/east_hall
scoreboard players reset *AI_Chica Timer