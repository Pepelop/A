scoreboard players set *Version1 Debug 1
scoreboard players set *Version2 Debug 6
scoreboard players set *Version3 Debug 0
fill 77 46 203 119 46 153 cobblestone replace deepslate_tiles
fill 118 47 175 124 47 183 cobblestone replace deepslate_tiles
fill 118 52 170 108 52 157 cobblestone replace deepslate_tiles
fill 119 53 183 124 53 175 cobblestone replace deepslate_tiles
setblock 111 50 158 light[level=5]
setblock 85 45 179 light[level=6]
setblock 111 45 161 light[level=3]
setblock 121 46 180 light[level=5]
setblock 121 46 177 light[level=5]
fill 119 46 177 119 46 181 air
setblock 116 45 197 light[level=10]
tp @e[tag=door_left] 84 42 176.75 -180 0
tp @e[tag=door_right] 84 42 182.25 -180 0
tp @e[tag=bonnieshadow] 85 42 176 90 0
fill 84 42 176 85 42 176 air
fill 84 42 182 85 42 182 air
fill 84 41 176 85 41 176 purpur_block
fill 84 41 182 85 41 182 purpur_block
execute positioned 96 44 191 unless entity @e[type=glow_item_frame,distance=..2] run summon glow_item_frame 96 44 191 {Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:4b,Item:{Count:1b,id:"minecraft:book"}}
execute as @e[type=item_frame,nbt=!{Invulnerable:1b}] run data merge entity @s {Invulnerable:1b,Silent:1b}
execute as @e[type=glow_item_frame,nbt=!{Invulnerable:1b}] run data merge entity @s {Invulnerable:1b,Silent:1b}
execute unless entity @e[tag=jumpscare_bonnie_body] run summon armor_stand 83.0 41.8 179 {Tags:["jumpscare_bonnie_body"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute unless entity @e[tag=jumpscare_bonnie_head] run summon armor_stand 82.85 41.8 179 {Tags:["jumpscare_bonnie_head"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}

execute unless entity @e[tag=jumpscare_chica_body] run summon armor_stand 83.0 41.8 179 {Tags:["jumpscare_chica_body"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute unless entity @e[tag=jumpscare_chica_head] run summon armor_stand 82.85 41.8 179 {Tags:["jumpscare_chica_head"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}

execute unless entity @e[tag=jumpscare_freddy_body] run summon armor_stand 83.0 41.8 179 {Tags:["jumpscare_freddy_body"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute unless entity @e[tag=jumpscare_freddy_head] run summon armor_stand 82.85 41.8 179 {Tags:["jumpscare_freddy_head"],Marker:1b,Invisible:1b,Rotation:[90.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}

execute unless entity @e[tag=nose] run summon villager 82.7 44.0 179.3 {Tags:["nose"],NoAI:1b,Silent:1b}
#[82.7d,44.0d,179.3d]
tellraw @a {"text": "Updated to v1.6.0 - Remaster Update","color": "gray"}
