# Check if player was crouching first
execute if predicate _jpad:crouching run return run function _jpad:action/mode/up

# Remove Right Click Tag
tag @s remove jpad_rmb

# Check Mode of Player
# Create
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run return run function _jpad:action/create/spawn


# Delete
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] run return run function _jpad:action/delete/start