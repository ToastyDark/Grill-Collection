# Move column up
execute store result score column_val temp run data get entity @s data.column 1
scoreboard players add column_val temp 1
# Check if all of coulmn is finished, stop if true
$execute unless score column_val temp matches ..$(width) run return run function _jpad:display/end
execute store result entity @s data.column int 1 run scoreboard players get column_val temp

# Reset row to 0
data modify entity @s data.row set value 0


# Restart loop
function _jpad:display/loop with entity @s data