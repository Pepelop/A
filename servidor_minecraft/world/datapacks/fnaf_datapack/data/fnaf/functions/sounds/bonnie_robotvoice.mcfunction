#/playsound fnaf.robotvoice master @a 80 44 175 2
scoreboard players add *BonnieRobotvoice Timer 1
execute if score *BonnieRobotvoice Timer matches 1 run stopsound @a master fnaf.robotvoice_bonnie
execute if score *BonnieRobotvoice Timer matches 1 run playsound fnaf.robotvoice_bonnie master @a 80 44 175 2
execute if score *BonnieRobotvoice Timer matches 300 run scoreboard players reset *BonnieRobotvoice Timer