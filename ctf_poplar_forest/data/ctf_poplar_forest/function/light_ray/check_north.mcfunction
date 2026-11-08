summon minecraft:item_display ~ ~.5 ~.499 {item:{"id":"paper", "components":{item_model:"lght_ray_west_multi_extender"}}, Tags:["light_ray", "light_ray_extender_check", "mr_mergerot"]}


scoreboard players add $i ctf.map.poplar 1
execute if score $i ctf.map.poplar matches 20.. run return fail
execute unless block ~ ~ ~1 #air run return 1
execute if block ~ ~ ~1 #air run execute positioned ~ ~1 ~ run return run function ctf_poplar_forest:light_ray/check_north