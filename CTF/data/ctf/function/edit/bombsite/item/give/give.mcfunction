# Stop if map is null
#$give @s gunpowder[custom_name={"bold":true,"color":"red","italic":false,"text":"Unassigned Bombsite Edtior"},custom_data={ctf_bombsite_editor:true,ctf_map:$(map)},lore=[{"color":"gray","italic":false,"text":"Create and edit CTF Bombsites"},{"color":"gray","italic":false,"text":"Hold and click chat to set map."}]] 1

# Prep
$function ctf:edit/bombsite/item/give/prep {map:$(map)}

# Give Item
function ctf:edit/bombsite/item/give/give_item with storage ctf:temp bombsite_editor_item_give