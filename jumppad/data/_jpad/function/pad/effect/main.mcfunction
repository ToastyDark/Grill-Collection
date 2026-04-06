# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail

# Give player can jump tag
tag @s add jpad_can_jump
 
# Application
function _jpad:pad/effect/apply_strength with entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data
function _jpad:pad/effect/apply_gravity with entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data