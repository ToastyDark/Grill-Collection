# Display Actionbar for editors
execute if entity @s[tag=jpad_editor] run function _jpad:player/actionbar with entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data

# Give Jump Attribute
function _jpad:pad/effect/main

# Check if player jumped
function _jpad:pad/effect/jump_check