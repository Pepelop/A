scoreboard players add *CameraSound Timer 1
#execute if score *CameraSound Timer matches 100 at @a[tag=openedcamera] run playsound fnaf.camera.loop master @a ~ ~ ~ 10
#execute if score *CameraSound Timer matches 200 run scoreboard players reset *CameraSound Timer
execute if score *CameraSound Timer matches 1 at @a[tag=openedcamera] run playsound fnaf.camera.loop master @a ~ ~ ~ 10
execute if score *CameraSound Timer matches 200 run scoreboard players reset *CameraSound Timer