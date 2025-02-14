execute if score *RejoinIntro Debug matches 1 if score *Started Game matches 1 run function fnaf:game_end
execute if score *RejoinIntro Debug matches 1 run scoreboard players set *UIState Game 0
execute if score *RejoinIntro Debug matches 1 run clear @s
execute if score *RejoinIntro Debug matches 1 run function fnaf:menu/disclaimer_rejoin_start
scoreboard players reset @s Leave