scoreboard players set *Version1 Debug 1
scoreboard players set *Version2 Debug 3
scoreboard players set *Version3 Debug 1
gamemode adventure @a
data merge entity @e[tag=tutorial,limit=1] {Silent:1b}
scoreboard objectives setdisplay sidebar
tellraw @a {"text": "Updated to v1.3.1 - Quick Hotfix","color": "gray"}