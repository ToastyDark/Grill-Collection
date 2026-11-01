# Reset loop
$data modify storage ctf:temp bombsite_info set value {map:"$(map)",team_num:$(team_num),current_bsite:0}

# Count the number of Bombsites on team from array
$execute store result score $bombsite_info_max temp run data get storage ctf:map $(map).team$(team_num).bsite
execute store result storage ctf:temp bombsite_info.count int 1 run scoreboard players get $bombsite_info_max temp

# Team Header
function ctf:edit/bombsite/info_dump/loop/header with storage ctf:temp bombsite_info

# Set loop to 0 and start
scoreboard players set $bombsite_info_count temp 0
function ctf:edit/bombsite/info_dump/loop/start