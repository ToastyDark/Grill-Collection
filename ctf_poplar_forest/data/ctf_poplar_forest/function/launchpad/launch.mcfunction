execute at @n[tag=poplar_launcher] run summon marker ~ ~ ~ {Tags:["dummy_poplar"]}
data modify entity @e[tag=dummy_poplar,limit=1] Pos[0] set from entity @s Pos[0]
data modify entity @e[tag=dummy_poplar,limit=1] Pos[2] set from entity @s Pos[2]
execute positioned as @e[tag=dummy_poplar] rotated as @s run tp @s ~ ~ ~ ~ ~
kill @e[tag=dummy_poplar]
tp @s ~ ~0.2 ~
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
summon minecraft:wind_charge ~ ~-0.1 ~ {Motion:[0,-10,0]}
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 30
playsound minecraft:item.elytra.flying player @s
tag @s add poplar_launched