scoreboard players add *AI_Bonnie Timer 1
scoreboard players add *AI_Chica Timer 1
scoreboard players add *AI_Freddy Timer 1
scoreboard players add *AI_Foxy Timer 1
###Bonnie
execute if score *AI_Bonnie Timer matches 99.. run function fnaf:random/20
execute if score *AI_Bonnie Timer matches 99.. if score *20Random Random <= *AI_Bonnie Game run function fnaf:ai/bonnie
execute if score *AI_Bonnie Timer matches 99.. unless score *20Random Random <= *AI_Bonnie Game run scoreboard players reset *AI_Bonnie Timer
###Chica
execute if score *AI_Chica Timer matches 100.. run function fnaf:random/20
execute if score *AI_Chica Timer matches 100.. if score *20Random Random <= *AI_Chica Game run function fnaf:ai/chica
execute if score *AI_Chica Timer matches 100.. unless score *20Random Random <= *AI_Chica Game run scoreboard players reset *AI_Chica Timer
###Freddy
execute if score *MovementCoolDown_Freddy Game matches 1.. run scoreboard players remove *MovementCoolDown_Freddy Game 1
execute if score *Pos_Freddy Game matches 7 unless entity @a[tag=openedcamera] run function fnaf:ai/freddy_attack

execute if score *AI_Freddy Timer matches 60.. run function fnaf:random/20
execute if score *AI_Freddy Timer matches 60.. if score *20Random Random <= *AI_Freddy Game if score *MovementCoolDown_Freddy Game matches 0 run function fnaf:ai/freddy
execute if score *AI_Freddy Timer matches 60.. if score *20Random Random <= *AI_Freddy Game unless score *MovementCoolDown_Freddy Game matches 0 run scoreboard players reset *AI_Freddy Timer
execute if score *AI_Freddy Timer matches 60.. unless score *20Random Random <= *AI_Freddy Game run function fnaf:sounds/circus
execute if score *AI_Freddy Timer matches 60.. unless score *20Random Random <= *AI_Freddy Game run scoreboard players reset *AI_Freddy Timer
###Foxy
execute if score *MovementCoolDown_Foxy Game matches 1.. run scoreboard players remove *MovementCoolDown_Foxy Game 1
execute if score *FoxyAttack Timer matches 1.. run function fnaf:ai/foxy_attack

execute if score *AI_Foxy Timer matches 100.. run function fnaf:random/20
execute if score *AI_Foxy Timer matches 100.. if score *20Random Random <= *AI_Foxy Game if score *MovementCoolDown_Foxy Game matches 0 run function fnaf:ai/foxy
#execute if score *AI_Foxy Timer matches 100.. if score *20Random Random <= *AI_Foxy Game unless score *MovementCoolDown_Foxy Game matches 0 run tellraw @a {"text": "Foxy failed to move"}
execute if score *AI_Foxy Timer matches 100.. if score *20Random Random <= *AI_Foxy Game unless score *MovementCoolDown_Foxy Game matches 0 run scoreboard players reset *AI_Foxy Timer
execute if score *AI_Foxy Timer matches 100.. unless score *20Random Random <= *AI_Foxy Game run function fnaf:sounds/piratesong
execute if score *AI_Foxy Timer matches 100.. unless score *20Random Random <= *AI_Foxy Game run scoreboard players reset *AI_Foxy Timer