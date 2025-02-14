scoreboard players add *CameraError Timer 1
execute if score *CameraError Timer matches 1 run playsound fnaf.digitalerror master @a 96 47 191 10
execute if score *CameraError Timer matches 100 run scoreboard players set *CameraError Game 0
execute if score *CameraError Timer matches 100 run scoreboard players reset *CameraError Timer