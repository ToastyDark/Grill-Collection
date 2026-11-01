# Count the number of Bombsites on team from array
$execute store result score $bombsite_info_max temp run data get storage ctf:map $(map).team$(team_num).bsite


# Subtract 1 for shown bombsite count
scoreboard players operation $bombsite_info_shown temp = $bombsite_info_max temp
scoreboard players remove $bombsite_info_shown temp 1
# Check for negative nums
execute if score $bombsite_info_shown temp matches ..-1 run scoreboard players set $bombsite_info_shown temp 0

# Store the number
execute store result storage ctf:temp bombsite_info.count int 1 run scoreboard players get $bombsite_info_shown temp



# ----- Set loop data -----
$data modify storage ctf:temp bombsite_info set value {map:"$(map)",team_num:$(team_num),current_bsite:0}

# Count the number of Bombsites on team from array
$execute store result score $bombsite_info_max temp run data get storage ctf:map $(map).team$(team_num).bsite
execute store result storage ctf:temp bombsite_info.count int 1 run scoreboard players get $bombsite_info_max temp



# Store Team Header
function ctf:edit/bombsite/info_dump/loop/header with storage ctf:temp bombsite_info


# Set loop to 0 and start
scoreboard players set $bombsite_info_count temp 0
function ctf:edit/bombsite/info_dump/loop/start with storage ctf:temp bombsite_info