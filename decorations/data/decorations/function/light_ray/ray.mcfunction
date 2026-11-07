execute unless block ~ ~ ~ air run return fail

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0
execute unless function decorations:light_ray/check_is_air_column run return fail

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0

# west
execute if function decorations:light_ray/check_west run summon minecraft:item_display ~.49 ~-1.5 ~ {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray"]}

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0

# east
execute if function decorations:light_ray/check_east run summon minecraft:item_display ~-.49 ~-1.5 ~ {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[180f,0f]}
tag @e remove mr_mergerot

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0

# north
execute if function decorations:light_ray/check_north run summon minecraft:item_display ~ ~-1.5 ~.49 {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[90f,0f]}
tag @e remove mr_mergerot

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0

# south
execute if function decorations:light_ray/check_south run summon minecraft:item_display ~ ~-1.5 ~-.49 {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "mr_mergerot"]}

execute as @e[tag=mr_mergerot] run data merge entity @s {Rotation:[270f,0f]}
tag @e remove mr_mergerot
