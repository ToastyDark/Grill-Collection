# Playsound
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1.4 0.5

# Remove Right Click Tag
tag @s remove jpad_rmb


# Switch Mode to Create
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/create

# Switch Mode to Type
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/type

# Switch Mode to Block
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/block

# Switch Mode to Size
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/size

# Switch Mode to Length
#execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/length

# Switch Mode to Width
#execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:length}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/width

# Switch Mode to Strength
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:size}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/strength

# Switch Mode to Gravity
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:strength}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/gravity

# Switch Mode to Print
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:gravity}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/print

# Switch Mode to Copy
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:print}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/copy

# Switch Mode to Delete
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:copy}] run return run item modify entity @s weapon.mainhand _jpad:set_mode/delete