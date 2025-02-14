scoreboard players set *Version1 Debug 1
scoreboard players set *Version2 Debug 5
scoreboard players set *Version3 Debug 0
scoreboard objectives add CONST dummy
scoreboard players set *20 CONST 20
scoreboard players set *AICooldown_Bonnie Game 99
scoreboard players set *AICooldown_Chica Game 100
scoreboard players set *AICooldown_Foxy Game 100
scoreboard players set *AICooldown_Freddy Game 60
scoreboard players set *MovementCoolDown_Foxy Game 0
scoreboard players set *MovementCoolDown_Freddy Game 0
scoreboard players set *Foxy_PowerPenalty Game 1
execute unless entity @e[tag=randomai] run summon glow_item_frame 129 45 173 {Facing:5b,Invisible:1b,Silent:1b,Tags:["randomai"],Item:{Count:1b,id:"minecraft:coal",tag:{CustomModelData:24}}}
tellraw @a {"text": "Updated to v1.5.0 - AI Update","color": "gray"}