# Check if player was crouching first
execute if predicate _jpad:crouching run return run function _jpad:action/mode/up



# Remove Right Click Tag
tag @s remove jpad_rmb