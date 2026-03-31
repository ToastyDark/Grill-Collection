# Player Tick
execute as @a at @s run function _jpad:player/tick

# Interaction Tick
execute as @e[type=interaction,tag=jpad_int] at @s run function _jpad:int/tick