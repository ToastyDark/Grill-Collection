scoreboard players add @s ctf.map.poplar.launch_sfx 1
execute if score @s ctf.map.poplar.launch_sfx matches 20.. run tag @s remove poplar_launched_sfx
particle white_ash ~ ~ ~