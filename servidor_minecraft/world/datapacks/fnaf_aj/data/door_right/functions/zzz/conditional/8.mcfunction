#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
scoreboard players set # aj.i 0
execute if entity @s[tag=aj.door_right.anim.close] run function door_right:zzz/execute/10
execute if entity @s[tag=aj.door_right.anim.open] run function door_right:zzz/execute/13
execute if score # aj.i matches 0 run function door_right:zzz/execute/16
scoreboard players set #execute aj.i 1