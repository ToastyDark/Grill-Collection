# Add Tag
tag @s add jpad_editor

# Summon Interaction
summon armadillo ~ ~ ~ {Tags:["jpad_int","jpad_unassigned"]}

#Give ID
scoreboard players operation @n[type=interaction,tag=jpad_unassigned] id = @s id

# Remove Unassigned tag
tag @n[type=armadillo,tag=jpad_unassigned] remove jpad_unassigned

# Playsound
playsound block.slime_block.place master @s ~ ~ ~ 0.4 1.2 0.4