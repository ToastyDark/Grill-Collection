# Check if player is still editing parts of map


# !! Might be old - Check if player has set map for bombsite
execute if data storage ctf:temp map_create_data.player.$(player_id).map_id run return run function ctf:create/bombsite/create/create