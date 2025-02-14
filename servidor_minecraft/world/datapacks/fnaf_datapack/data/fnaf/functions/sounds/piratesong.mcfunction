#execute if score *ChatMessages Debug matches 1 run tellraw @a {"text":"[DEBUG] Foxy tried to sing the song"}
#function fnaf:random/20
#execute if score *20Random Random matches 20 run function fnaf:random/20
##execute if score *20Random Random matches 20 run function fnaf:random/5
#execute if score *20Random Random matches 20 run playsound fnaf.piratesong master @a 81 43 179 15
#if score *5Random Random matches 5 

execute if score *MovementMessages Debug matches 1 run tellraw @a {"text":"[DEBUG] Foxy tried to sing the song"}
function fnaf:random/20
#execute if score *20Random Random matches 20 run function fnaf:random/20
execute if score *20Random Random matches 20 run function fnaf:random/5
#execute if score *20Random Random matches 20 if score *5Random Random matches 5 run function fnaf:random/2
execute if score *20Random Random matches 20 if score *5Random Random matches 5 run stopsound @a master fnaf.piratesong
execute if score *20Random Random matches 20 if score *5Random Random matches 5 run playsound minecraft:fnaf.piratesong master @a 104 44 162 2.5
#if score *5Random Random matches 5 if score *2Random Random matches 2 