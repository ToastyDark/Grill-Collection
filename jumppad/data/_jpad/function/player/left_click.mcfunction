# Check if player was crouching first
execute unless predicate _jpad:crouching run return run function _jpad:action/mode/down

# Remove Right Click Tag
tag @s remove jpad_lmb

# Preperation Commands
function _jpad:action/fill_temp_aciton {direction:remove}


# ---------------------- Check Mode of Player ----------------------
# Width
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] run return run function _jpad:action/width/main with storage jpad:temp action