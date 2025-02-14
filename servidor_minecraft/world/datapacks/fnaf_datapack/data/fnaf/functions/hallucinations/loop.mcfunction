scoreboard players add *Hallucinations Timer 1
function fnaf:hallucinations/animation_loop
execute if score *Hallucinations Timer matches 10 run stopsound @a[tag=guard] master fnaf.robotvoice
execute if score *Hallucinations Timer matches 10 run scoreboard players set *Hallucinations Game 0
execute if score *Hallucinations Timer matches 10 run scoreboard players reset *Hallucinations Timer