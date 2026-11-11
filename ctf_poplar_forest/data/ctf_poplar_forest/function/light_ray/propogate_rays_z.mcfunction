scoreboard players add $propogate.z ctf.map.poplar 1
execute if score $propogate.z ctf.map.poplar < $propogate.h ctf.map.poplar positioned ~ ~ ~1 run function ctf_poplar_forest:light_ray/propogate_rays_z
function ctf_poplar_forest:light_ray/ray
summon minecraft:item_display ~ 80.5 ~ {item:{"id":"paper", "components":{item_model:"solid_down"}}, Tags:["light_ray"]}
