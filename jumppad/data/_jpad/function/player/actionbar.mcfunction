# Stop if player's not editing actionbar
execute unless entity @s[tag=jpad_editor] run return fail

# Create Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run title @s actionbar [{text:"Mode: ",bold:true,color:"gray"},{text:"Create",bold:true,color:"green"}]

# Type Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] run title @s actionbar [{text:"Type: ",bold:true,color:"gray"},{text:"type",bold:true,color:"green"}]