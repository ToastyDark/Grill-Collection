# Display Actionbar for editors
execute if entity @s[tag=jpad_editor] run function _jpad:player/actionbar with entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data

# Give Jump Attribute