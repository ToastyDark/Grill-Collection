# Check if player started holding a Jump Pad Editor
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad:true}] unless entity @s[tag=jpad_editor] run function _jpad:player/editor/add

# TP Interaction
function _jpad:player/editor/tp_int

# Check if player is still holding Jump Pad Editor
execute if entity @s[tag=jpad_editor] unless items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad:true}] run function _jpad:player/editor/remove



# Check if Player Left Clicks
execute if entity @s[tag=jpad_lmb] run function _jpad:player/left_click
execute if entity @s[tag=jpad_rmb] run function _jpad:player/right_click