function fnaf:blip/blip_camera
scoreboard players set *SavedCamera Game 4
execute if score *Pos_Foxy Game matches 4 if score *FoxyAttack Timer matches 60.. run function fnaf:ai/foxy/move/run_animation