#scoreboard players reset *Version1 Debug
#scoreboard players reset *Version2 Debug
#scoreboard players reset *Version3 Debug
execute unless score *Version2 Debug matches 3.. run function fnaf:updates/1.3.0
execute if score *Version2 Debug matches 3 unless score *Version3 Debug matches 1.. run function fnaf:updates/1.3.1
execute unless score *Version2 Debug matches 4.. run function fnaf:updates/1.4.0
execute unless score *Version2 Debug matches 5.. run function fnaf:updates/1.5.0
execute unless score *Version2 Debug matches 6.. run function fnaf:updates/1.6.0
execute unless score *Version2 Debug matches 7.. run function fnaf:updates/1.7.0
tellraw @a {"text": "Map Updated!"}