# Check if player was crouching first
execute if predicate _jpad:crouching run return run function _jpad:action/mode/up

# Remove Right Click Tag
tag @s remove jpad_rmb

# Preperation Commands
function _jpad:action/fill_temp_aciton {direction:add}

# ---------------------- Check Mode of Player ----------------------
# Create
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run return run function _jpad:action/create/spawn

# Block
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] run return run function _jpad:action/block/main with storage jpad:temp action

# Width
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] run return run function _jpad:action/width/main with storage jpad:temp action

# Delete
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] run return run function _jpad:action/delete/start