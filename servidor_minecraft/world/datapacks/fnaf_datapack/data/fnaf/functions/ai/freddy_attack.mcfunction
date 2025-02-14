scoreboard players add *FreddyAttack Timer 1
execute if score *FreddyAttack Timer matches 20 run function fnaf:random/20
execute if score *FreddyAttack Timer matches 20 if score *20Random Random matches 1..5 run function fnaf:jumpscares/freddy_office_start
execute if score *FreddyAttack Timer matches 20 unless score *20Random Random matches 1..5 if score *MovementMessages Debug matches 1 run tellraw @a {"text": "[DEBUG] Freddy's Jumpscare attempt failed"}
execute if score *FreddyAttack Timer matches 20 run scoreboard players reset *FreddyAttack Timer 