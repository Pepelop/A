effect clear @a
clear @a
tp @a 66 44 173 -180 90
stopsound @a master
playsound fnaf.static master @a 66 44 173
execute if score *Night Game matches 6..7 run scoreboard players set *Night Game 5
scoreboard players set *MenuMusic Game 1
scoreboard players reset *MenuMusic Timer
title @a title {"text": ""}
title @a subtitle {"text": ""}
title @a actionbar {"text": ""}
scoreboard players set *UIState Game 1
scoreboard players set *AI_Bonnie Game 0
scoreboard players set *AI_Freddy Game 0
scoreboard players set *AI_Chica Game 0
scoreboard players set *AI_Foxy Game 0
scoreboard players set *RejoinIntro Debug 1