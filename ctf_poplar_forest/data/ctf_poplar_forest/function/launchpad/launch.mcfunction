execute store result storage ctf.map:poplar launch_pad_y double 1 run data get entity @n[tag=poplar_launcher] Pos[1]
# works run manually but not in function idk why
# (if working, this fixes inconsistent launch height in theory)
function ctf_poplar_forest:launchpad/launch_helper with storage ctf.map:poplar
tp @s ~ ~0.2 ~
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}

summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 30
playsound minecraft:item.elytra.flying player @s
tag @s add poplar_launched
tag @s add poplar_launched_sfx
scoreboard objectives add ctf.map.poplar.launch_sfx dummy
scoreboard players set @s ctf.map.poplar.launch_sfx 0