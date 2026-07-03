# Stop if player already got list
execute if entity @s[tag=ctf_bombsite_assigning_map] run return fail

# List Maps
tellraw @s {text:"Sandcastle",bold:true,color:"yellow"}


# Tag player
tag @s add ctf_bombsite_assigning_map