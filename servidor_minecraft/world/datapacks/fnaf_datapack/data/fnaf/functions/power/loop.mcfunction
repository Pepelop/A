#scoreboard players add *Power Timer 1
#execute if score *Power Timer >= *PowerLimit Timer if score *Power Game matches 1 run function fnaf:power/out
#execute if score *Power Timer >= *PowerLimit Timer if score *Power Game matches 1 run scoreboard players set *Power Game 0
#execute if score *Power Timer >= *PowerLimit Timer if score *Power Game matches 2.. run scoreboard players remove *Power Game 1
#execute if score *Power Timer >= *PowerLimit Timer run scoreboard players reset *Power Timer

#every second = power - usage (power at start = 999, displaying power/10)
#Satrting from 2nd night there's additional power drainage

scoreboard players add *Power Timer 1
execute if score *Power Timer matches 20.. run scoreboard players operation *Power Game -= *Usage Game
execute if score *Power Timer matches 20.. run scoreboard players reset *Power Timer

execute if score *Night Game matches 2..7 run function fnaf:power/additional

execute if score *Power Game matches ..0 run function fnaf:power/out