scoreboard players add $i ctf.map.poplar 1
execute if score $i ctf.map.poplar matches 20.. run return 1
execute unless block ~ ~ ~ #air run return fail
execute if block ~ ~ ~ #air run execute positioned ~ ~1 ~ run return run function ctf_poplar_forest:light_ray/check_is_air_column