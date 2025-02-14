#tellraw @a {"text": "Foxy tries to move"}
execute if score *AI_Foxy Timer matches 100.. if score *Pos_Foxy Game matches 1 unless entity @a[tag=openedcamera] run function fnaf:ai/foxy/move/stage_1
execute if score *AI_Foxy Timer matches 100.. if score *Pos_Foxy Game matches 2 unless entity @a[tag=openedcamera] run function fnaf:ai/foxy/move/stage_2
execute if score *AI_Foxy Timer matches 100.. if score *Pos_Foxy Game matches 3 unless entity @a[tag=openedcamera] run function fnaf:ai/foxy/move/west_hall
