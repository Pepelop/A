execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 1 if score *Pos_Bonnie Game matches 2.. if score *Pos_Chica Game matches 2.. unless entity @a[tag=openedcamera] run function fnaf:ai/freddy/move/dining_area
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 2 unless entity @a[tag=openedcamera] run function fnaf:ai/freddy/move/restrooms
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 3 unless entity @a[tag=openedcamera] run function fnaf:ai/freddy/move/kitchen
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 4 unless entity @a[tag=openedcamera] run function fnaf:ai/freddy/move/east_hall
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 5 unless entity @a[tag=openedcamera] run function fnaf:ai/freddy/move/e_hall_corner

execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 1 if score *Pos_Bonnie Game matches 2.. if score *Pos_Chica Game matches 2.. if entity @a[tag=openedcamera] run scoreboard players set *Freddy_MovementSchedule Game 2
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 2 if entity @a[tag=openedcamera] run scoreboard players set *Freddy_MovementSchedule Game 3
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 3 if entity @a[tag=openedcamera] run scoreboard players set *Freddy_MovementSchedule Game 4
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 4 if entity @a[tag=openedcamera] run scoreboard players set *Freddy_MovementSchedule Game 5
execute if score *AI_Freddy Timer matches 60 if score *Pos_Freddy Game matches 5 if entity @a[tag=openedcamera] run scoreboard players set *Freddy_MovementSchedule Game 6

execute if score *AI_Freddy Timer matches 60 if score *HardMode Game matches 0 if score *Pos_Freddy Game matches 6 if entity @a[tag=openedcamera] unless score *SavedCamera Game matches 8 if score *RightDoor Game matches 0 run function fnaf:ai/freddy/move/office
execute if score *AI_Freddy Timer matches 60 if score *HardMode Game matches 0 if score *Pos_Freddy Game matches 6 if entity @a[tag=openedcamera] unless score *SavedCamera Game matches 8 if score *RightDoor Game matches 1 run function fnaf:ai/freddy/move/east_hall

execute if score *AI_Freddy Timer matches 60 if score *HardMode Game matches 1 if score *Pos_Freddy Game matches 6 if score *RightDoor Game matches 0 run function fnaf:ai/freddy/move/office
execute if score *AI_Freddy Timer matches 60 if score *HardMode Game matches 1 if score *Pos_Freddy Game matches 6 if score *RightDoor Game matches 1 run function fnaf:ai/freddy/move/east_hall

scoreboard players reset *AI_Freddy Timer
#function fnaf:ai/freddy/cooldown