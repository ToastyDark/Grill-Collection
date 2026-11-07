# west
execute unless block ~1 ~ ~ #air if block ~1 ~-1 ~ air run summon minecraft:item_display ~0.5 ~-1 ~ {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray"]}
execute unless block ~1 ~ ~ #air unless block ~1 ~-1 ~ air run execute positioned ~ ~-1 ~ run function decorations:light_ray/ray

# east
execute unless block ~-1 ~ ~ #air if block ~-1 ~-1 ~ air run summon minecraft:item_display ~-0.5 ~-1 ~ {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}
execute unless block ~-1 ~ ~ #air unless block ~-1 ~-1 ~ air run execute positioned ~ ~-1 ~ run function decorations:light_ray/ray

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[180f,0f]}
tag @e remove mr_mergerot

# north
execute unless block ~ ~ ~1 #air if block ~ ~-1 ~1 air run summon minecraft:item_display ~ ~-1 ~.5 {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}
execute unless block ~ ~ ~1 #air unless block ~ ~-1 ~1 air run execute positioned ~ ~-1 ~ run function decorations:light_ray/ray

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[90f,0f]}
tag @e remove mr_mergerot

# north
execute unless block ~ ~ ~-1 #air if block ~ ~-1 ~-1 air run summon minecraft:item_display ~ ~-1 ~-.5 {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}
execute unless block ~ ~ ~-1 #air unless block ~ ~-1 ~-1 air run execute positioned ~ ~-1 ~ run function decorations:light_ray/ray

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[270f,0f]}
tag @e remove mr_mergerot
