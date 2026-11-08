scoreboard players add $i ctf.map.poplar 1
execute if score $i ctf.map.poplar matches 20.. run return fail
execute unless block ~1 ~ ~ #air run return 1
execute if block ~1 ~ ~ #air run execute positioned ~ ~1 ~ run return run function ctf_poplar_forest:light_ray/check_west

execute if function ctf_poplar_forest:light_ray/check_west run summon minecraft:item_display ~.499 ~-.5 ~ {item:{"id":"paper", "components":{item_model:"solid_west"}}, Tags:["light_ray"]}
