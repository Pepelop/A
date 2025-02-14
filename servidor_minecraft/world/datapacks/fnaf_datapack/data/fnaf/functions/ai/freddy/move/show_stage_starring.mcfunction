function fnaf:random/5
execute if score *5Random Random matches 1..4 as @e[tag=freddy] run function freddy:set_variant/default
execute if score *5Random Random matches 1..4 as @e[tag=freddy] run function freddy:animations/show_stage/play
execute if score *5Random Random matches 1..4 as @e[tag=freddy] positioned 121.0 43 179 rotated 110 0 run function freddy:move
execute if score *5Random Random matches 1..4 as @e[tag=freddy] run function freddy:animations/show_stage/stop
execute if score *5Random Random matches 5 as @e[tag=freddy] run function freddy:set_variant/default_creepy
execute if score *5Random Random matches 5 as @e[tag=freddy] run function freddy:animations/show_stage_alone/play
execute if score *5Random Random matches 5 as @e[tag=freddy] positioned 121.0 43 179 rotated 120 0 run function freddy:move
execute if score *5Random Random matches 5 as @e[tag=freddy] run function freddy:animations/show_stage_alone/stop