scoreboard players add $propogate.x ctf.map.poplar 1
execute if score $propogate.x ctf.map.poplar < $propogate.w ctf.map.poplar positioned ~1 ~ ~ run function ctf_poplar_forest:light_ray/propogate_rays_x
scoreboard players set $propogate.z ctf.map.poplar 0
function ctf_poplar_forest:light_ray/propogate_rays_z

summon glow_squid