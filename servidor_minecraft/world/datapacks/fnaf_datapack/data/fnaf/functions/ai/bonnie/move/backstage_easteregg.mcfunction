execute as @e[tag=bonnie] run function bonnie:animations/w_hall_corner_twitching/stop
function fnaf:random/20
execute if score *20Random Random matches 1..19 run execute as @e[tag=bonnie] run function bonnie:set_variant/default
execute if score *20Random Random matches 1..19 run execute as @e[tag=bonnie] run function bonnie:animations/backstage/play
execute if score *20Random Random matches 1..19 run execute as @e[tag=bonnie] positioned 115.0 42 162.0 rotated 90 0 run function bonnie:move
execute if score *20Random Random matches 1..19 run execute as @e[tag=bonnie] run function bonnie:animations/backstage/stop
execute if score *20Random Random matches 20 run execute as @e[tag=bonnie] run function bonnie:set_variant/default_creepy
execute if score *20Random Random matches 20 run execute as @e[tag=bonnie] run function bonnie:animations/backstage_creepy/play
execute if score *20Random Random matches 20 run execute as @e[tag=bonnie] positioned 112.7 41.8 161 rotated 85 0 run function bonnie:move
execute if score *20Random Random matches 20 run execute as @e[tag=bonnie] run function bonnie:animations/backstage_creepy/stop