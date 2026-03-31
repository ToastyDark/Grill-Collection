# Add Tag
tag @s add jpad_editor

# Summon Interaction
summon armor_stand ~ ~ ~ {Tags:["jpad_marker","jpad_unassigned"],Small:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:interaction",width:1.2f,height:1.3,Tags:["jpad_int","jpad_unassigned"]}]}

#Give ID
scoreboard players operation @n[type=armor_stand,tag=jpad_unassigned] id = @s id
scoreboard players operation @n[type=interaction,tag=jpad_unassigned] id = @s id

# Remove Unassigned tag
tag @n[type=armor_stand,tag=jpad_unassigned] remove jpad_unassigned
tag @n[type=interaction,tag=jpad_unassigned] remove jpad_unassigned

# Playsound
playsound block.slime_block.place master @s ~ ~ ~ 0.4 1.2 0.4