scoreboard players add *FanSound Timer 1
execute if score *FanSound Timer matches 1 at @a[tag=guard] run playsound fnaf.fanloop.camera master @a ~ ~ ~ 0.5
execute if score *FanSound Timer matches 192 run scoreboard players reset *FanSound Timer