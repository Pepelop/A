scoreboard players operation *PowerDisplay Game = *Power Game
scoreboard players operation *PowerDisplay Game /= *10 CONST


execute if score *Usage Game matches 1 run data merge block 78 41 179 {Command:'{"text":"\\uC001\\uF826\\uF826\\uF826"}'}
execute if score *Usage Game matches 2 run data merge block 78 41 179 {Command:'{"text":"\\uC002\\uF826\\uF826"}'}
execute if score *Usage Game matches 3 run data merge block 78 41 179 {Command:'{"text":"\\uC003\\uF826"}'}
execute if score *Usage Game matches 4 run data merge block 78 41 179 {Command:'{"text":"\\uC004"}'}