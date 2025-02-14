execute as @e[tag=buttons_left] if score *LeftDoor Game matches 1 run function fnaf:buttons/left_door_off
execute as @e[tag=buttons_right] if score *RightDoor Game matches 1 run function fnaf:buttons/right_door_off
execute as @e[tag=buttons_left] if score *LeftLight Game matches 1 run function fnaf:buttons/left_light_off
execute as @e[tag=buttons_right] if score *RightLight Game matches 1 run function fnaf:buttons/right_light_off

execute as @e[tag=menu_customnight_hardmode] run function fnaf:menu/hardmode_off
effect clear @a
setblock 83 42 179 air
kill @e[tag=mutecall]
scoreboard players set *RejoinIntro Debug 0
scoreboard players set *BlackScreen Timer 0
scoreboard players set *AI Timer 0
scoreboard players set *Started Game 0
scoreboard players set *GoldenFreddy Game 0
scoreboard players reset *AI_Bonnie Timer 
scoreboard players reset *AI_Chica Timer 
scoreboard players reset *AI_Freddy Timer 
scoreboard players reset *AI_Foxy Timer 
scoreboard players reset *FoxyAttack Timer
scoreboard players reset *FreddyAttack Timer 
scoreboard players set *MovementCoolDown_Foxy Game 0
scoreboard players set *MovementCoolDown_Freddy Game 0
#scoreboard players set *SavedCamera Game 1
scoreboard players set *GameTime Timer 0
scoreboard players set *LeftDanger Game 0
scoreboard players set *RightDanger Game 0
scoreboard players set *LeftBlocked Game 0
scoreboard players set *RightBlocked Game 0
scoreboard players set *PowerOutStage Timer 0
scoreboard players set *PowerOut Timer 0
scoreboard players set *Usage Game 1
scoreboard players reset *AlarmCheck Timer
scoreboard players reset *Alarm Timer
scoreboard players set *Hallucinations Game 0
scoreboard players reset *Hallucinations Timer
time set 14000
title @a times 0 100 0
title @a actionbar {"text": ""}
title @a subtitle {"text": ""}
title @a title {"text": ""}
stopsound @a master
tag @a remove guard
tag @a remove openedcamera

scoreboard players reset @a QuitConfirm