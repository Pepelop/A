item replace entity @s weapon.mainhand with paper{CamAnim:1b,display:{Name:'{"text":" "}'},HideFlags:2,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-127,Operation:0,UUID:[I;95226840,-2097724647,-1583523333,-1498113578]}]}
effect give @s slowness 9999 100 true
stopsound @a master fnaf.camera.close
playsound fnaf.camera.open master @a ~ ~ ~ 10
scoreboard players reset @a Sneak

execute if score *GoldenFreddy Timer matches 1.. run stopsound @a master fnaf.robotvoice
execute if score *GoldenFreddy Timer matches 1.. run item replace entity @e[tag=office_table] armor.head with nether_brick{CustomModelData:25}
execute if score *GoldenFreddy Timer matches 1.. as @e[tag=gfreddy] run function gfreddy:set_variant/invisible
execute if score *GoldenFreddy Timer matches 1.. run scoreboard players set *GoldenFreddy Game 0
execute if score *GoldenFreddy Timer matches 1.. run scoreboard players reset *GoldenFreddy Timer

tag @s add sneaking
tag @s add openingcamera
tag @s remove closingcamera
