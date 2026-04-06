# z
execute if entity @s[y_rotation=-45..45] run item modify entity @s weapon.mainhand _jpad:set_direction/z
execute if entity @s[y_rotation=135..180] run item modify entity @s weapon.mainhand _jpad:set_direction/z
execute if entity @s[y_rotation=-180..-135] run item modify entity @s weapon.mainhand _jpad:set_direction/z

# x
execute if entity @s[y_rotation=-135..-45] run item modify entity @s weapon.mainhand _jpad:set_direction/x
execute if entity @s[y_rotation=45..135] run item modify entity @s weapon.mainhand _jpad:set_direction/x