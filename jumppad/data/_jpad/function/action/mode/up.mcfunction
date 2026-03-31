# Switch Mode to Type
say hi
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run item modify entity @s weapon.mainhand _jpad:set_mode/type




# Remove Right Click Tag
tag @s remove jpad_rmb