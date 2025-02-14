function fnaf:blip/blip_camera
execute if score *GoldenFreddy Game matches 1 as @e[tag=gfreddy] run function gfreddy:set_variant/default
execute if score *GoldenFreddy Game matches 1 run playsound fnaf.gfreddy.laugh master @a 96 47 191 10
execute if score *GoldenFreddy Game matches 1 run item replace entity @e[tag=office_table] armor.head with nether_brick{CustomModelData:26}
execute if score *GoldenFreddy Game matches 1 run scoreboard players set *GoldenFreddy Timer 1
scoreboard players set *SavedCamera Game 5