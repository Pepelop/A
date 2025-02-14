execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 1 if score *CameraError Game matches 0 run tp @s @e[tag=cam1,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 2 if score *CameraError Game matches 0 run tp @s @e[tag=cam2,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 3 if score *CameraError Game matches 0 run tp @s @e[tag=cam3,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 4 if score *CameraError Game matches 0 run tp @s @e[tag=cam4,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 5 if score *CameraError Game matches 0 run tp @s @e[tag=cam5,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 6 if score *CameraError Game matches 0 run tp @s @e[tag=cam6,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 7 if score *CameraError Game matches 0 run tp @s @e[tag=cam7,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 8 if score *CameraError Game matches 0 run tp @s @e[tag=cam8,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 9 if score *CameraError Game matches 0 run tp @s @e[tag=cam9,limit=1]
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 10 if score *CameraError Game matches 0 run tp @s 96.2 44 191 -90 0
execute if score *HardMode Game matches 0 if score *SavedCamera Game matches 11 if score *CameraError Game matches 0 run tp @s @e[tag=cam11,limit=1]
#81 52 179
#execute if score *SavedCamera Game matches 1 run title @a subtitle {"text":"\uF82C\uF82BShow Stage"}
#execute if score *SavedCamera Game matches 2 run title @a subtitle {"text":"\uF82C\uF82BDining Area"}
#execute if score *SavedCamera Game matches 3 run title @a subtitle {"text":"\uF82C\uF82BPirate Cove"}
#execute if score *SavedCamera Game matches 4 run title @a subtitle {"text":"\uF82C\uF82BWest Hall"}
#execute if score *SavedCamera Game matches 5 run title @a subtitle {"text":"\uF82C\uF82BW. Hall Corner"}
#execute if score *SavedCamera Game matches 6 run title @a subtitle {"text":"\uF82C\uF82BSupply Closet"}
#execute if score *SavedCamera Game matches 7 run title @a subtitle {"text":"\uF82C\uF82BEast Hall"}
#execute if score *SavedCamera Game matches 8 run title @a subtitle {"text":"\uF82C\uF82BE. Hall Corner"}
#execute if score *SavedCamera Game matches 9 run title @a subtitle {"text":"\uF82C\uF82BBackstage"}
#execute if score *SavedCamera Game matches 10 run title @a subtitle {"text":"\uF82C\uF82BKitchen"}
#execute if score *SavedCamera Game matches 11 run title @a subtitle {"text":"\uF82C\uF82BRestrooms"}

execute if score *HardMode Game matches 0 if score *CameraError Game matches 1 run tp @s 81 52 179 90 0
execute if score *HardMode Game matches 1 run tp @s 81 52 179 90 0


#execute unless entity @s[nbt={SelectedItem:{tag:{CamList:1b}},Inventory:[{Slot:-106b,tag:{Cam:1b}}]}] run clear @s
#execute unless entity @s[nbt={SelectedItem:{tag:{CamList:1b}},Inventory:[{Slot:-106b,tag:{Cam:1b}}]}] run item replace entity @s weapon.offhand with paper{CustomModelData:6,Cam:1b,display:{Name:'{"text":""}'}}
#execute unless entity @s[nbt={SelectedItem:{tag:{CamList:1b}},Inventory:[{Slot:-106b,tag:{Cam:1b}}]}] run loot replace entity @s weapon.mainhand loot fnaf:camlist 
execute if data entity @s SelectedItem{tag:{CameraID:1}} unless score *SavedCamera Game matches 1 run function fnaf:cameras/switch_1
execute if data entity @s SelectedItem{tag:{CameraID:2}} unless score *SavedCamera Game matches 2 run function fnaf:cameras/switch_2
execute if data entity @s SelectedItem{tag:{CameraID:3}} unless score *SavedCamera Game matches 3 run function fnaf:cameras/switch_3
execute if data entity @s SelectedItem{tag:{CameraID:4}} unless score *SavedCamera Game matches 4 run function fnaf:cameras/switch_4
execute if data entity @s SelectedItem{tag:{CameraID:5}} unless score *SavedCamera Game matches 5 run function fnaf:cameras/switch_5
execute if data entity @s SelectedItem{tag:{CameraID:6}} unless score *SavedCamera Game matches 6 run function fnaf:cameras/switch_6
execute if data entity @s SelectedItem{tag:{CameraID:7}} unless score *SavedCamera Game matches 7 run function fnaf:cameras/switch_7
execute if data entity @s SelectedItem{tag:{CameraID:8}} unless score *SavedCamera Game matches 8 run function fnaf:cameras/switch_8
execute if data entity @s SelectedItem{tag:{CameraID:9}} unless score *SavedCamera Game matches 9 run function fnaf:cameras/switch_9
execute if data entity @s SelectedItem{tag:{CameraID:10}} unless score *SavedCamera Game matches 10 run function fnaf:cameras/switch_10
execute if data entity @s SelectedItem{tag:{CameraID:11}} unless score *SavedCamera Game matches 11 run function fnaf:cameras/switch_11

execute unless data entity @s {SelectedItem:{tag:{Cam:1b}},Inventory:[{Slot:-106b,tag:{CamUI:1b}}]} run clear @s
execute unless data entity @s {SelectedItem:{tag:{Cam:1b}},Inventory:[{Slot:-106b,tag:{CamUI:1b}}]} run kill @e[type=item]
execute unless data entity @s {SelectedItem:{tag:{Cam:1b}},Inventory:[{Slot:-106b,tag:{CamUI:1b}}]} run item replace entity @s weapon.offhand with paper{CamUI:1b,CustomModelData:6,display:{Name:'{"text":""}'}}
execute unless data entity @s {SelectedItem:{tag:{Cam:1b}},Inventory:[{Slot:-106b,tag:{CamUI:1b}}]} if score *CameraSide Game matches 0 run function fnaf:cameras/hotbar/left
execute unless data entity @s {SelectedItem:{tag:{Cam:1b}},Inventory:[{Slot:-106b,tag:{CamUI:1b}}]} if score *CameraSide Game matches 1 run function fnaf:cameras/hotbar/right

execute as @s[scores={RClickW=0..}] if score *CameraSide Game matches 0 run function fnaf:cameras/hotbar/right
execute as @s[scores={RClickW=0..}] if score *CameraSide Game matches 1 run function fnaf:cameras/hotbar/left


##Rotation

scoreboard players add @e[tag=cam,tag=!cam6] Timer 1
execute as @e[tag=cam] at @s if score @s Timer matches 1..100 run tp @s ~ ~ ~ ~0.14 ~
execute as @e[tag=cam] at @s if score @s Timer matches 141..240 run tp @s ~ ~ ~ ~-0.14 ~
execute as @e[tag=cam] at @s if score @s Timer matches 280 run scoreboard players reset @s Timer

##Animatronic Moaning

execute if score *BonnieMoan Timer matches 1..599 run scoreboard players add *BonnieMoan Timer 1
execute if score *BonnieMoan Timer matches 400 at @a[tag=guard] run playsound minecraft:fnaf.breathing master @a ^ ^ ^-2 10
execute if score *BonnieMoan Timer matches 600 run function fnaf:cameras/close_animation/start

execute if score *ChicaMoan Timer matches 1..599 unless score *BonnieMoan Timer matches 1..599 run scoreboard players add *ChicaMoan Timer 1
execute if score *ChicaMoan Timer matches 400 at @a[tag=guard] run playsound minecraft:fnaf.breathing master @a ^ ^ ^-2 10
execute if score *ChicaMoan Timer matches 600 run function fnaf:cameras/close_animation/start