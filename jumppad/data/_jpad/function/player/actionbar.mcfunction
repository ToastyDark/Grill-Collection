# Stop if player's not editing actionbar
execute unless entity @s[tag=jpad_editor] run return fail

# Create Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:create}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Mode: ",bold:true,color:"gray"},{text:"Create",bold:true,color:"green"}]

# Type Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:type}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Type: ",bold:true,color:"gray"},{text:"$(type)",bold:true,color:"aqua"}]

# Block Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:block}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Block: ",bold:true,color:"gray"},{text:"$(block)",bold:true,color:"aqua"}]

# Length Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:length}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Length: ",bold:true,color:"gray"},{text:"$(length)",bold:true,color:"aqua"}]

# Width Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:width}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Width: ",bold:true,color:"gray"},{text:"$(width)",bold:true,color:"aqua"}]

# Strength Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:strength}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Strength: ",bold:true,color:"gray"},{text:"$(strength)",bold:true,color:"aqua"}]

# Gravity Mode
$execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:gravity}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Gravity: ",bold:true,color:"gray"},{text:"$(gravity)",bold:true,color:"aqua"}]

# Delete Mode
execute if items entity @s weapon.mainhand slime_ball[minecraft:custom_data~{jpad_mode:delete}] unless entity @s[scores={actionbar_cd=1..}] run return run title @s actionbar [{text:"Mode: ",bold:true,color:"gray"},{text:"Delete",bold:true,color:"red"}]