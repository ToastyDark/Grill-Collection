execute positioned as @n[tag=poplar_launcher] rotated as @s run tp @s ~ ~ ~ ~ ~
tp @s ~ ~0.2 ~
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 30
playsound minecraft:item.elytra.flying player @s
tag @s add poplar_launched