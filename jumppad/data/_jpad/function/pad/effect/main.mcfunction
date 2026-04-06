# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail

# Give player can jump tag
tag @s add jpad_can_jump
 
# Application
function _jpad:pad/effect/apply_strength
function _jpad:pad/effect/apply_gravity