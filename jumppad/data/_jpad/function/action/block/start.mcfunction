# Run Set Block
$execute at @s as @e[type=armor_stand,tag=jpad_jump_pad] if data entity @s data{editors:[$(current_id)]} run function _jpad:action/block/set_block with entity @s data

# Clear Current ID
data remove storage jpad:temp action