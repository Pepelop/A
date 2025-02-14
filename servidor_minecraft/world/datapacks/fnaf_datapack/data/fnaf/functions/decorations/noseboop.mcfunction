#execute as @s[x_rotation=-107.7..-106.2,y_rotation=-18.8..-17.8] run say noseboop
##-106.2  -107.7  X
##-17.8   -18.8   Y
execute store result score *XR Timer run data get entity @s Rotation[0]
execute store result score *YR Timer run data get entity @s Rotation[1]
#execute if score *Power Game matches 1.. if score *XR Timer matches -105..-103 if score *YR Timer matches -19..-18 run stopsound @a master fnaf.noseboop
execute if score *XR Timer matches -105..-103 if score *YR Timer matches -19..-18 run playsound fnaf.noseboop master @a 82 43 179
advancement revoke @s only fnaf:noseboop