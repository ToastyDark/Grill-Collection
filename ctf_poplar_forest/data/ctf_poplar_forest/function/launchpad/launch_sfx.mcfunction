scoreboard players add @s ctf.map.poplar.launch_sfx 1
execute if score @s ctf.map.poplar.launch_sfx matches 20.. run tag @s remove poplar_launched_sfx
execute if score @s ctf.map.poplar.launch_sfx matches 20.. run stopsound @s player item.elytra.flying
particle white_ash ~ ~ ~