scoreboard players add *WestHallLight Timer 1
execute if score *WestHallLight Timer matches 1 run fill 101 45 174 101 45 173 light[level=6]
execute if score *WestHallLight Timer matches 3 run fill 101 45 174 101 45 173 air
execute if score *WestHallLight Timer matches 1 run item replace entity @e[tag=westhall_darkness] armor.head with air
execute if score *WestHallLight Timer matches 3 run item replace entity @e[tag=westhall_darkness] armor.head with nether_brick{CustomModelData:57}
execute if score *WestHallLight Timer matches 3 run scoreboard players reset *WestHallLight Timer