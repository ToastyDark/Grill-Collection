# Remove any old modifiers
#attribute @s jump_strength modifier remove jpad_strength

# Add new strength
#attribute @s minecraft:jump_strength modifier add jpad_strength 1 add_value
$execute if data entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data{type:jump} run attribute @s minecraft:jump_strength modifier add jpad_strength $(strength) add_value