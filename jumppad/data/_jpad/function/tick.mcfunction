# Player Tick
execute as @a at @s run function _jpad:player/tick

# Interaction Tick
execute as @e[type=interaction,tag=jpad_int] at @s run function _jpad:int/tick

# Jump Pad Tick
execute as @e[type=armor_stand,tag=jpad_jump_pad] at @s run function _jpad:pad/tick