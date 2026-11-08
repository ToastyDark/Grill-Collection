execute as @e[tag=poplar_launcher] at @s as @e[tag=!poplar_launched,distance=..2,type=!minecraft:marker,type=!minecraft:item_display,type=!minecraft:block_display] at @s run function ctf_poplar_forest:launchpad/launch
execute as @e[tag=poplar_launched] at @s unless entity @e[tag=poplar_launcher,distance=2..] run tag @s remove poplar_launched
execute as @e[tag=poplar_launched_sfx] at @s run function ctf_poplar_forest:launchpad/launch_sfx
