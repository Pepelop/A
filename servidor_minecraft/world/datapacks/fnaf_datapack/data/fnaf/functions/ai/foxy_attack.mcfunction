scoreboard players remove *FoxyAttack Timer 1
execute as @e[tag=foxy,tag=aj.foxy.anim.running] at @s run tp @s ^ ^ ^0.7
execute if score *FoxyAttack Timer matches 60 if score *HardMode Game matches 1 as @a at @s run playsound fnaf.run master @s ~ ~ ~ 
execute if score *FoxyAttack Timer matches 40 run function fnaf:ai/foxy/move/door
execute if score *FoxyAttack Timer matches 0 if score *LeftDoor Game matches 0 run function fnaf:jumpscares/foxy_start
execute if score *FoxyAttack Timer matches 0 if score *LeftDoor Game matches 1 run function fnaf:ai/foxy/move/return