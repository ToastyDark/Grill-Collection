# Jump
$execute as @e[type=armor_stand,tag=jpad_jump_pad] if data entity @s data{editors:[$(current_id)]} if data entity @s data{type:jump} run function _jpad:action/type/levi with entity @s data

# Levi
$execute as @e[type=armor_stand,tag=jpad_jump_pad] if data entity @s data{editors:[$(current_id)]} if data entity @s data{type:levi} run function _jpad:action/type/jump with entity @s data


# Play Sound
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1.8 1
