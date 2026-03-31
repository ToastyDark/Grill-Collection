# Stop if player's not editing actionbar
execute unless entity @s[tag=jpad_editor] run return fail

# Create Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] run title @s actionbar [{text:"Mode: ",bold:true,color:"gray"},{text:"Create",bold:true,color:"green"}]

# Type Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] run title @s actionbar [{text:"Type: ",bold:true,color:"gray"},{text:"type",bold:true,color:"green"}]

# Block Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] run title @s actionbar [{text:"Block: ",bold:true,color:"gray"},{text:"block",bold:true,color:"green"}]

# Length Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:length}] run title @s actionbar [{text:"Length: ",bold:true,color:"gray"},{text:"0",bold:true,color:"green"}]

# Width Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] run title @s actionbar [{text:"Width: ",bold:true,color:"gray"},{text:"0",bold:true,color:"green"}]

# Strength Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:strength}] run title @s actionbar [{text:"Strength: ",bold:true,color:"gray"},{text:"0",bold:true,color:"green"}]

# Gravity Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:gravity}] run title @s actionbar [{text:"Gravity: ",bold:true,color:"gray"},{text:"0",bold:true,color:"green"}]

# Delete Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] run title @s actionbar [{text:"Mode: ",bold:true,color:"gray"},{text:"Delete",bold:true,color:"red"}]