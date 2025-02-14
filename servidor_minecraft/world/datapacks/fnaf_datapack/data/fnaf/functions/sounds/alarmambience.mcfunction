#fnaf.ambience
#2 280
execute unless score *Alarm Timer matches 1.. run scoreboard players add *AlarmCheck Timer 1
execute if score *AlarmCheck Timer matches 200 if score *Pos_Bonnie Game matches 4..7 run playsound fnaf.ambience master @a 83 41 179 10
execute if score *AlarmCheck Timer matches 200 if score *Pos_Bonnie Game matches 4..7 run scoreboard players set *Alarm Timer 1
execute if score *AlarmCheck Timer matches 200 unless score *Pos_Bonnie Game matches 4..7 if score *Pos_Chica Game matches 5..7 run playsound fnaf.ambience master @a 83 41 179 10
execute if score *AlarmCheck Timer matches 200 unless score *Pos_Bonnie Game matches 4..7 if score *Pos_Chica Game matches 5..7 run scoreboard players set *Alarm Timer 1
execute if score *AlarmCheck Timer matches 200 unless score *Pos_Bonnie Game matches 4..7 unless score *Pos_Chica Game matches 5..7 if score *Pos_Foxy Game matches 3..4 run playsound fnaf.ambience master @a 83 41 179 10
execute if score *AlarmCheck Timer matches 200 unless score *Pos_Bonnie Game matches 4..7 unless score *Pos_Chica Game matches 5..7 if score *Pos_Foxy Game matches 3..4 run scoreboard players set *Alarm Timer 1
execute if score *AlarmCheck Timer matches 200 run scoreboard players reset *AlarmCheck Timer

execute if score *Alarm Timer matches 1.. run scoreboard players add *Alarm Timer 1
execute if score *Alarm Timer matches 2280 run scoreboard players reset *Alarm Timer