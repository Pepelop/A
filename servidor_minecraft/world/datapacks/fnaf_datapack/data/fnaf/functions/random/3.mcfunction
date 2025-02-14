scoreboard players set *3Random Random 0
scoreboard players operation *3Random Random += @e[tag=3random,sort=random,limit=1] Random
execute if score *RandomMessages Debug matches 1 run tellraw @a [{"text": "[DEBUG] *3Random is "},{"score":{"objective":"Random","name":"*3Random"}}]
