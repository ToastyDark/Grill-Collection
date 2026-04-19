# Remove any old modifiers
#function _jpad:pad/effect/remove

# Add new strength
#attribute @s minecraft:gravity modifier add jpad_gravity -0.05 add_value
$attribute @s minecraft:gravity modifier add jpad_gravity $(gravity) add_value