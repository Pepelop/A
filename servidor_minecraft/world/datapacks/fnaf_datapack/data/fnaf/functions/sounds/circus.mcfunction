execute if score *MovementMessages Debug matches 1 run tellraw @a {"text":"[DEBUG] Freddy tried to sing the song"}

function fnaf:random/20
execute if score *20Random Random matches 1 run stopsound @a master fnaf.circus
execute if score *20Random Random matches 1 unless score *Pos_Freddy Game matches 4 as @a at @s run playsound fnaf.circus master @s ~ ~ ~ 1