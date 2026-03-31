# Add Tag
tag @s remove jpad_editor

# Kill Interaction
execute at @s as @e[type=armor_stand,tag=jpad_marker] if score @s id = @p id on passengers run kill @s
execute at @s as @e[type=armor_stand,tag=jpad_marker] if score @s id = @p id run kill @s

# Playsound
playsound block.slime_block.break master @s ~ ~ ~ 0.4 0.7 0.4

# Clear Actionbar
title @s actionbar {text:" "}
