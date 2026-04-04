# Check if player was crouching first
execute unless predicate _jpad:crouching run return run function _jpad:action/mode/up

# Remove Right Click Tag
tag @s remove jpad_rmb

# Get execututers ID
function _jpad:action/store_id
data modify storage jpad:temp action.direction set value add

# Check Mode of Player
# Create
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run return run function _jpad:action/create/spawn

# Width
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] run return run function _jpad:action/width/main with storage jpad:temp


# Delete
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] run return run function _jpad:action/delete/start