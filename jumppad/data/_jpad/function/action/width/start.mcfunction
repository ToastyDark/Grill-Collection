#execute if data entity @e[type=minecraft:armor_stand,tag=jpad_jump_pad,limit=1] data{editors:[1]}



# Run Add
$execute as @e[type=armor_stand,tag=jpad_jump_pad] if data entity @s data{editors:[$(current_id)]} run function _jpad:action/width/$(direction) with entity @s data


# Clear Current ID
data remove storage jpad:temp action