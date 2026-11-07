scoreboard players add $i ctf.map.poplar 1
execute if score $i ctf.map.poplar matches 20.. run return fail
execute unless block ~ ~ ~-1 #air run return 1
execute unless block ~ ~ ~ #air run return fail
execute if block ~ ~ ~-1 #air run execute positioned ~ ~1 ~ run return run function decorations:light_ray/check_south