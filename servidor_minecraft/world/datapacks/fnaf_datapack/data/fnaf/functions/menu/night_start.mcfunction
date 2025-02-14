scoreboard players set *StartCutscene Timer 1
title @a title {"text":""}
function fnaf:blip/blip
stopsound @a master fnaf.static
stopsound @a master fnaf.menumusic
scoreboard players reset *MenuMusic Timer
scoreboard players set *MenuMusic Game 0