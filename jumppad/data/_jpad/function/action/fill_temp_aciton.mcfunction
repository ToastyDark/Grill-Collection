# Get execututers ID
execute store result storage jpad:temp action.current_id int 1 run scoreboard players get @s id
$data modify storage jpad:temp action.direction set value $(direction)