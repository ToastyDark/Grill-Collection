# Add Tag
tag @s remove jpad_editor

# Kill Interaction
execute at @s as @e[type=armadillo,tag=jpad_int] if score @s id = @p id run kill @s

# Playsound
playsound block.slime_block.break master @s ~ ~ ~ 0.4 0.7 0.4
