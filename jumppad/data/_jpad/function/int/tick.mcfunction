# Prevent Strays if Player Leaves server
execute store result storage jpad:temp check_left_id int 1 run scoreboard players get @s id
function _jpad:player/editor/left_stray_check with storage jpad:temp

# Left Click Detection
execute on attacker if score @s id = @n[type=interaction,tag=jpad_int] id run tag @s add jpad_lmb

# Right Click Detection
execute on target if score @s id = @n[type=interaction,tag=jpad_int] id run tag @s add jpad_rmb



#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}