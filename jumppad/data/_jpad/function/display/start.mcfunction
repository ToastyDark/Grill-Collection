# Kill any displays
function _jpad:display/kill_loop

# ------ Prepare Loop ------
data modify entity @s data.row set value 0
data modify entity @s data.column set value 1


# Start Loop
function _jpad:display/loop with entity @s data