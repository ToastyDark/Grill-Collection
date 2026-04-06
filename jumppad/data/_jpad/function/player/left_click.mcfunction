# Check if player was crouching first
execute if predicate _jpad:crouching run return run function _jpad:action/mode/down

# Remove Right Click Tag
tag @s remove jpad_lmb

# Preperation Commands
function _jpad:action/fill_temp_aciton {direction:remove}


# ---------------------- Check Mode of Player ----------------------
# Length
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:size,jpad_facing:x}] run return run function _jpad:action/length/main with storage jpad:temp action

# Width
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:size,jpad_facing:z}] run return run function _jpad:action/width/main with storage jpad:temp action