scoreboard players set *Version1 Debug 1
scoreboard players set *Version2 Debug 3
scoreboard players set *Version3 Debug 0
scoreboard objectives setdisplay sidebar
data merge entity @e[tag=gfreddy,limit=1] {Marker:1b}
tellraw @a {"text": "Updated to v1.3.0 - Visual Enhancement Update","color": "gray"}