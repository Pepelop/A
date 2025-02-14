scoreboard players add *Jumpscare Timer 1
execute if score *Jumpscare Timer matches 1 run playsound fnaf.xscream2 master @a 81 43 179 20
execute if score *Jumpscare Timer matches 1..65 run title @a actionbar {"text":"\uE042"}
execute if score *Jumpscare Timer matches 66 run title @a actionbar {"text":""}
execute if score *Jumpscare Timer matches 66 run stopsound @a master fnaf.xscream2
execute if score *Jumpscare Timer matches 66 run clear @a
execute if score *Jumpscare Timer matches 66..266 run tp @a 81 52 179
execute if score *Jumpscare Timer matches 266 run function fnaf:menu_start
execute if score *Jumpscare Timer matches 266 run scoreboard players set *JumpscareType Game 0
execute if score *Jumpscare Timer matches 266 run scoreboard players reset *Jumpscare Timer
