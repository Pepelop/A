#tag @s add sneaking
tag @s remove closingcamera
tag @s add seen_hint
clear @s
item replace entity @s weapon.mainhand with air
#execute if score *Power Game matches 1.. if score *Pos_Bonnie Game matches 9 run function fnaf:jumpscares/bonnie_start
#execute if score *Power Game matches 1.. if score *Pos_Chica Game matches 9 unless score *Pos_Bonnie Game matches 9 unless score *JumpscareType Game matches 1 run function fnaf:jumpscares/chica_start