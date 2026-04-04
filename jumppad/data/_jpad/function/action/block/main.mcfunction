# Stop if no block in offhand
execute if items entity @s weapon.offhand air run return run function _jpad:msg/hold_block

# Start to Set Block
$function _jpad:action/block/start {current_id:$(current_id), action:block }