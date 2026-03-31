# Playsound
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8 0.5

# Remove Left Click Tag
tag @s remove jpad_lmb

# Tag with switching mode
tag @s add jpad_switching_mode


#execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run item modify entity @s weapon.mainhand _jpad:set_mode/delete



# Switch Mode to Delete
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/delete

# Switch Mode to Gravity
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/gravity

# Switch Mode to Strength
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:gravity}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/strength

# Switch Mode to Width
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:strength}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/width

# Switch Mode to Length
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/length

# Switch Mode to Block
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:length}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/block

# Switch Mode to Type
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/type

# Switch Mode to Create
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] if entity @s[tag=jpad_switching_mode] run function _jpad:action/mode/mode/create

