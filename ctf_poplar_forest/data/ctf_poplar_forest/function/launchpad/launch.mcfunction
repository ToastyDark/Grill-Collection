execute store result storage ctf.map:poplar launch_pad_y double 1 run data get entity @n[tag=poplar_launcher] Pos[1]
function ctf_poplar_forest:launchpad/launch_helper with storage ctf.map:poplar
tp @s ~ ~0.2 ~
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 30
playsound minecraft:item.elytra.flying player @s
tag @s add poplar_launched