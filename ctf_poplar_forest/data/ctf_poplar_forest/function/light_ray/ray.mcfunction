execute unless block ~ ~ ~ air run return fail

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $i ctf.map.poplar 0
scoreboard players set $swap ctf.map.poplar 0
execute unless function ctf_poplar_forest:light_ray/check_is_air_column run return fail

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $swap ctf.map.poplar 0
scoreboard players set $i ctf.map.poplar 0

# west
execute if function ctf_poplar_forest:light_ray/check_west run summon minecraft:item_display ~.499 ~-1.5 ~ {item:{"id":"paper", "components":{item_model:"light_ray_west_multi"}}, Tags:["light_ray", "light_ray_condition"]}
execute unless entity @e[tag=light_ray_condition] run kill @e[tag=light_ray_extender_check]
tag @e remove light_ray_extender_check
tag @e remove light_ray_condition

scoreboard objectives add ctf.map.poplar dummy
scoreboard players set $swap ctf.map.poplar 0
scoreboard players set $i ctf.map.poplar 0
