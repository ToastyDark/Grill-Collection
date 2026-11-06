# Removing player from pending
tag @s remove ctf_bombsite_pending
scoreboard players reset @s ctf_bombsite_edit_cd

# Kill own preview
scoreboard players operation $bombsite_edit_id temp = @s id
execute as @e[type=armadillo,tag=ctf_bombsite_preview] if score @s id = $bombsite_edit_id temp run kill @s
scoreboard players reset $bombsite_edit_id temp

# Clear storage
execute store result storage ctf:temp bombsite_editor.cancel.id int 1 run scoreboard players get @s id
function ctf:edit/bombsite/add/cancel_clear with storage ctf:temp bombsite_editor.cancel