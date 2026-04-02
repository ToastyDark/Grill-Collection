# Kill any displays
execute on passengers run kill @s

# ------ Prepare Loop ------
data modify entity @s data.row set value 0
data modify entity @s data.column set value 1


# Start Loop
function _jpad:display/loop with entity @s