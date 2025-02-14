scoreboard players set *2Random Random 0
scoreboard players operation *2Random Random += @e[tag=2random,sort=random,limit=1] Random
execute if score *RandomMessages Debug matches 1 run tellraw @a [{"text": "[DEBUG] *2Random is "},{"score":{"objective":"Random","name":"*2Random"}}]
