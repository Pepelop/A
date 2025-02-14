scoreboard players set *20Random Random 0
scoreboard players operation *20Random Random += @e[tag=20random,sort=random,limit=1] Random
execute if score *RandomMessages Debug matches 1 run tellraw @a [{"text": "[DEBUG] *20Random is "},{"score":{"objective":"Random","name":"*20Random"}}]
