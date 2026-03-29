# Interaction Tick
execute as @e[type=interaction,tag=ctf_tutorial] run function ctf:lobby/tutorial/tick/int

# Check if player breaks wool in tutorial
execute as @a at @s run function ctf:lobby/tutorial/tick/player
