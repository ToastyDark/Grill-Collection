# Check if hand is empty
execute if items entity @s weapon.mainhand air run return run title @s actionbar {text:"Hand must be empty",bold:true,color:"red"}

# Give Slimeball
item replace entity @s weapon.mainhand with slime_ball[custom_data={jpad:true,jpad_mode:create},custom_name={"bold":true,"color":"green","italic":false,"text":"Jump Pad Orb"},lore=[{"color":"gray","italic":false,"text":"A tool to create, edit"},{"color":"gray","italic":false,"text":"and remove jump pads."}," ",[{"color":"dark_green","italic":false,"text":"Crouch + RMB: "},{"color":"gray","italic":false,"text":"Change Mode"}]]] 1