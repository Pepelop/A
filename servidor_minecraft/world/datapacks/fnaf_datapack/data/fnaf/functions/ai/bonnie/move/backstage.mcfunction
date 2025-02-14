###Move
execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute as @e[tag=bonnie] run function bonnie:animations/backstage/play
execute as @e[tag=bonnie] positioned 115.0 42 162.0 rotated 90 0 run function bonnie:move
execute as @e[tag=bonnie] run function bonnie:animations/backstage/stop

###Extra
function fnaf:decorations/backstage/normal

execute if score *Pos_Bonnie Game matches 1 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 1 run function fnaf:cameras/error_start
execute if score *Pos_Bonnie Game matches 2 if entity @a[tag=openedcamera] if score *SavedCamera Game matches 2 run function fnaf:cameras/error_start
execute if entity @a[tag=openedcamera] if score *SavedCamera Game matches 9 run function fnaf:cameras/error_start
execute as @a at @s run playsound minecraft:fnaf.steps master @s ~ ~ ~ 0.6

scoreboard players set *Pos_Bonnie Game 3