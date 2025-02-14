#/playsound fnaf.robotvoice master @a 80 44 175 2
scoreboard players add *ChicaRobotvoice Timer 1
execute if score *ChicaRobotvoice Timer matches 1 run stopsound @a master fnaf.robotvoice_chica
execute if score *ChicaRobotvoice Timer matches 1 run playsound fnaf.robotvoice_chica master @a 79 44 183 2
execute if score *ChicaRobotvoice Timer matches 300 run scoreboard players reset *BonnieRobotvoice Timer