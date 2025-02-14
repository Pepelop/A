title @a title {"text": "\uC006"}
scoreboard players add *BlackScreen Timer 1
execute unless score *BlackScreen Timer matches 3 run schedule function fnaf:power/blackscreen2 1t
execute if score *BlackScreen Timer matches 3 run schedule function fnaf:power/blackscreen3 1t
playsound fnaf.fanloop master @a 81 43 179 15