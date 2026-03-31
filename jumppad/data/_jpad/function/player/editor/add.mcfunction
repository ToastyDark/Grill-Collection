# Add Tag
tag @s add jpad_editor

# Summon Interaction
summon interaction ~ ~ ~ {Tags:["jpad_int","jpad_unassigned"],width:0.2,height:0.2}

#Give ID
scoreboard players operation @n[type=interaction,tag=jpad_unassigned] id = @s id

# Remove Unassigned tag
tag @n[type=interaction,tag=jpad_unassigned] remove jpad_unassigned

# Playsound
playsound block.slime_block.place master @s ~ ~ ~ 0.4 1.2 0.4