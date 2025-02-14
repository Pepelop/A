scoreboard players add *Cutscene Timer 1
execute if score *Cutscene Timer matches -100..211 run tp @a 81 52 179
execute if score *Cutscene Timer matches 11 run title @a times 20 60 20
execute if score *Cutscene Timer matches 11 run title @a title {"text":"\uC016"}
execute if score *Cutscene Timer matches 111 run title @a title {"text":"\uC017"}
execute if score *Cutscene Timer matches 131 run tellraw @a {"text":"Planet Minecraft","color":"#58f000","bold": true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/xekyt/submissions/"}}
execute if score *Cutscene Timer matches 211 run function fnaf:menu_start
execute if score *Cutscene Timer matches 211 run scoreboard players set *DisclaimerCutscene Timer 0
execute if score *Cutscene Timer matches 211 run scoreboard players reset *Cutscene Timer