execute as @e[tag=foxy] run function foxy:set_variant/default
execute as @e[tag=foxy] run function foxy:animations/running/play
execute if score *HardMode Game matches 0 as @a at @s run playsound fnaf.run master @s ~ ~ ~ 
scoreboard players set *FoxyAttack Timer 60
#schedule function fnaf:ai/foxy/move/door 1s

#tellraw @a {"text": "Foxy has started the run animation","color": "red"}