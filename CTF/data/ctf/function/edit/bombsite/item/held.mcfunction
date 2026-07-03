# Stop unless player is holding item
execute unless items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_bombsite_editor:true}] run return fail

# If player doesn't have assigned editor, list maps
execute if items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_map:null}] run function ctf:edit/bombsite/item/assign_map/assign