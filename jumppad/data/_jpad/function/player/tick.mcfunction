# Check if player started holding a Jump Pad Editor
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad:true}] unless entity @s[tag=jpad_editor] run function _jpad:player/editor/add

# TP Interaction
function _jpad:player/editor/tp_int

# Check if player is still holding Jump Pad Editor
execute if entity @s[tag=jpad_editor] unless items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad:true}] run function _jpad:player/editor/remove



# Check if Player Left Clicks
execute if entity @s[tag=jpad_lmb] run function _jpad:player/left_click
execute if entity @s[tag=jpad_rmb] run function _jpad:player/right_click


# Get Editor's Direction
execute if entity @s[tag=jpad_editor] if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:size}] run function _jpad:player/direction/get


# Actionbar for players not over pad
execute if entity @s[tag=!jpad_over] run function _jpad:player/actionbar2


# --------------- Jumping Stuffs ---------------
# Check if player jumped and isn't over pad
execute if entity @s[scores={jpad_jumped=1..},tag=!jpad_over] run scoreboard players reset @s jpad_jumped

# Check if player walked off pad
execute if entity @s[tag=jpad_can_jump] unless entity @s[tag=jpad_over] unless entity @s[tag=jpad_jumped] run function _jpad:pad/effect/remove


# Check if player is back on ground
execute if entity @s[tag=jpad_jumped] if entity @s[nbt={OnGround:1b}] run function _jpad:pad/effect/over