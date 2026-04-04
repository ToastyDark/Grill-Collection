# Store a players ID
execute store result storage jpad:temp editor_id int 1 run scoreboard players get @s id

# Add it to editor
function _jpad:pad/editor/add with storage jpad:temp

# Remove from storage
data remove storage jpad:temp editor_id