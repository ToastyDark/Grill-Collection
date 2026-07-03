# Set Map
$data modify storage ctf:temp bombsite_editor_item_give.map set value $(map)

# Set Text
$data modify storage ctf:temp bombsite_editor_item_give.display_name set from storage ctf:map $(map).display_name.text

# Set Color
$data modify storage ctf:temp bombsite_editor_item_give.color set from storage ctf:map $(map).display_name.color