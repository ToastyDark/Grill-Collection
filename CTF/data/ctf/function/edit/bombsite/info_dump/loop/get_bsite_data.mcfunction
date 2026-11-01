# Copy bombsite data
$data modify storage ctf:temp bombsite_info.data set from storage ctf:map $(map).team$(team_num).bsite[$(current_bsite)]
$data modify storage ctf:temp bombsite_info.data.num set value $(current_bsite)

# Set defaults so the message doesn't fail
execute unless data storage ctf:temp bombsite_info.data.time_to_explode run data modify storage ctf:temp bombsite_info.data.time_to_explode set value "default"
execute unless data storage ctf:temp bombsite_info.data.gives_point run data modify storage ctf:temp bombsite_info.data.gives_point set value true