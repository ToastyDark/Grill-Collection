# If player has assign tag and is holding item, remove tag
execute if entity @s[tag=ctf_bombsite_assigning_map] unless items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_bombsite_editor:true}] run tag @s remove ctf_bombsite_assigning_map

# Stop unless player is holding item
execute unless items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_bombsite_editor:true}] run return fail

# If player doesn't have assigned editor, list maps
execute if items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_map:null}] run return run function ctf:edit/bombsite/item/assign_map/list

# If Crouching
execute if predicate ctf:crouching run function ctf:edit/bombsite/info_dump/start


# Commands for Maps
execute if entity @s[scores={rclick=1}] run function ctf:edit/bombsite/add/start



# ------------

# Store id + map id
execute store result storage ctf:temp bombsite_editor.held.id int 1 run scoreboard players get @s id
data modify storage ctf:temp bombsite_editor.held.map set from entity @s SelectedItem.components."minecraft:custom_data".ctf_map

# Crouch = Info dump
execute if entity @s[scores={ctf_crouch_time=1}] unless entity @s[scores={rclick=1}] run return run function ctf:edit/bombsite/info_dump/start with storage ctf:temp bombsite_editor.held

# Crouch + Right Click = Move
execute if predicate ctf:crouching if entity @s[scores={rclick=1}] run return run function ctf:edit/bombsite/move/start with storage ctf:temp bombsite_editor.held

# Right Click = Place Bombsite
execute if entity @s[scores={rclick=1}] run function ctf:edit/bombsite/add/start with storage ctf:temp bombsite_editor.held