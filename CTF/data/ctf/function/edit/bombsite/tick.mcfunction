# Bombsite Editor Player Tick
execute as @a[tag=ctf_bombsite_pending] run function ctf:edit/bombsite/add/ptick

# Bombsite Preview Particles
execute as @e[type=armadillo,tag=ctf_bombsite_preview] at @s run particle minecraft:happy_villager ~ ~-1 ~ 0.3 0.4 0.3 0 2