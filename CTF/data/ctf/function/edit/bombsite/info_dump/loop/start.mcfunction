# Stop if hit max
execute if score $bombsite_info_count temp >= $bombsite_info_max temp run return fail

# Get info for bombsite #
execute store result storage ctf:temp bombsite_info.current_bsite int 1 run scoreboard players get $bombsite_info_count temp
function ctf:edit/bombsite/info_dump/loop/get_bsite_data with storage ctf:temp bombsite_info
function ctf:edit/bombsite/info_dump/loop/append_to_msg with storage ctf:temp bombsite_info.data

# Add 1 to i and start again
scoreboard players add $bombsite_info_count temp 1
function ctf:edit/bombsite/info_dump/loop/start