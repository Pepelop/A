#tellraw @s {"text": "Are you sure you want to quit? Click again to confirm.","color": "gray"}
scoreboard players set @s QuitConfirm 40
execute as @e[tag=quit] run data merge entity @s {ItemRotation:0b}
playsound entity.villager.work_librarian master @a 81 42 179
setblock 80 43 179 orange_carpet