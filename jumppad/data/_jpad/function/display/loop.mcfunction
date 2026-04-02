# Check if row hit max
execute store result score row_val temp run data get entity @s data.row
scoreboard players add row_val temp 1
#scoreboard players set 
# Check if all of row is finished, move to next column
$execute unless score row_val temp matches ..$(length) run return run function _jpad:display/next_column with entity @s data
execute store result entity @s data.row int 1 run scoreboard players get row_val temp


# +1 row
#execute store result score $temp temp run data get entity @s data.length 1
#scoreboard players add $temp temp 1
#execute store result entity @s data.length int 1 run scoreboard players get $temp temp



# Summon Display
function _jpad:display/place with entity @s


# Repeat
function _jpad:display/loop with entity @s