# Add Tag
tag @s remove jpad_editor

# Kill Interaction
execute at @s run function _jpad:player/editor/kill

# Playsound
playsound block.slime_block.break master @s ~ ~ ~ 0.4 0.7 0.4

# Clear Actionbar
title @s actionbar {text:" "}
