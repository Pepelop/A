scoreboard players set *5Random Random 0
scoreboard players operation *5Random Random += @e[tag=5random,sort=random,limit=1] Random
execute if score *RandomMessages Debug matches 1 run tellraw @a [{"text": "[DEBUG] *5Random is "},{"score":{"objective":"Random","name":"*5Random"}}]
