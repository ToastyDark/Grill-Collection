# Remove any old modifiers
attribute @s minecraft:jump_strength modifier remove jpad_strength
attribute @s minecraft:jump_strength modifier remove jpad_gravity

# Add new strength
attribute @s minecraft:jump_strength modifier add jpad_strength 1 add_value
attribute @s minecraft:gravity modifier add jpad_gravity 1 add_value