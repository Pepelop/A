###Freddy staring at the camera
execute if score *Pos_Freddy Game matches 1 unless score *Pos_Bonnie Game matches 1 unless score *Pos_Chica Game matches 1 run function fnaf:ai/freddy/move/show_stage_starring
###Backstage
execute unless score *Pos_Bonnie Game matches 3 run function fnaf:random/20
execute unless score *Pos_Bonnie Game matches 3 if score *20Random Random matches 1..19 run function fnaf:decorations/backstage/normal
execute unless score *Pos_Bonnie Game matches 3 if score *20Random Random matches 20 run function fnaf:decorations/backstage/easter_egg
###Backstage Bonnie starring at the camera
execute if score *Pos_Bonnie Game matches 3 run function fnaf:ai/bonnie/move/backstage_easteregg
###W. Hall Corner poster
function fnaf:random/20
function fnaf:random/5
execute if score *20Random Random matches 1 run item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:20}
execute if score *20Random Random matches 2..19 run item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:19}
execute if score *20Random Random matches 20 if score *5Random Random matches 1..4 run item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:19}
execute if score *20Random Random matches 20 if score *5Random Random matches 5 if score *Night Game matches 5..7 run item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:21}
execute if score *20Random Random matches 20 if score *5Random Random matches 5 if score *Night Game matches 5..7 run scoreboard players set *GoldenFreddy Game 1
execute if score *20Random Random matches 20 if score *5Random Random matches 5 if score *Night Game matches 1..4 run item replace entity @e[tag=westhall_corner] container.0 with nether_brick{CustomModelData:19}

###East Hall posters
function fnaf:random/20
execute if score *20Random Random matches 1..18 run item replace entity @e[tag=easthall_posters] container.0 with nether_brick{CustomModelData:32}
execute if score *20Random Random matches 19 run item replace entity @e[tag=easthall_posters] container.0 with nether_brick{CustomModelData:37}
execute if score *20Random Random matches 20 run item replace entity @e[tag=easthall_posters] container.0 with nether_brick{CustomModelData:38}

###E. Hall Corner rules

function fnaf:random/20
execute if score *20Random Random matches 1..16 run item replace entity @e[tag=easthall_corner] container.0 with nether_brick{CustomModelData:30}
execute if score *20Random Random matches 17 run item replace entity @e[tag=easthall_corner] container.0 with nether_brick{CustomModelData:47}
execute if score *20Random Random matches 18 run item replace entity @e[tag=easthall_corner] container.0 with nether_brick{CustomModelData:48}
execute if score *20Random Random matches 19 run item replace entity @e[tag=easthall_corner] container.0 with nether_brick{CustomModelData:49}
execute if score *20Random Random matches 20 run item replace entity @e[tag=easthall_corner] container.0 with nether_brick{CustomModelData:50}
