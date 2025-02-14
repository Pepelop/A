scoreboard players remove *PowerAdditional Timer 1
execute if score *PowerAdditional Timer matches ..0 run scoreboard players remove *Power Game 1
execute if score *PowerAdditional Timer matches ..0 if score *Night Game matches 2 run scoreboard players set *PowerAdditional Timer 120
execute if score *PowerAdditional Timer matches ..0 if score *Night Game matches 3 run scoreboard players set *PowerAdditional Timer 100
execute if score *PowerAdditional Timer matches ..0 if score *Night Game matches 4 run scoreboard players set *PowerAdditional Timer 80
execute if score *PowerAdditional Timer matches ..0 if score *Night Game matches 5..7 run scoreboard players set *PowerAdditional Timer 60