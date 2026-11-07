# Check if Player is already placing a bombiste. Confirm if true
execute if entity @s[tag=ctf_bombsite_pending] run return run function ctf:edit/bombsite/add/confrim with storage ctf:temp bombsite_editor.held

# Create pending bombsite with unset values
$data modify storage ctf:temp bombsite_editor.player.$(id) set value {id:$(id),map:"$(map)",team_num:0,time_to_explode:-1,gives_point:true}

# Store position and rotation
$execute store result storage ctf:temp bombsite_editor.player.$(id).x int 1 run data get entity @s Pos[0]
$execute store result storage ctf:temp bombsite_editor.player.$(id).y int 1 run data get entity @s Pos[1]
$execute store result storage ctf:temp bombsite_editor.player.$(id).z int 1 run data get entity @s Pos[2]
$execute store result storage ctf:temp bombsite_editor.player.$(id).rx float 1 run data get entity @s Rotation[0]
$execute store result storage ctf:temp bombsite_editor.player.$(id).ry float 1 run data get entity @s Rotation[1]

# Spawn Preview
execute at @s align xyz positioned ~.5 ~ ~.5 run summon armadillo ~ ~ ~ {NoAI:true,Tags:["ctf_bombsite_preview","ctf_bombsite_preview_new"],CustomName:{text:"Unconfirmed Bombsite",color:"yellow",bold:true}}
scoreboard players operation @n[type=armadillo,tag=ctf_bombsite_preview_new] id = @s id
tag @n[type=armadillo,tag=ctf_bombsite_preview_new] remove ctf_bombsite_preview_new

# Mark as pending and start 30s timeout
tag @s add ctf_bombsite_pending
scoreboard players set @s ctf_bombsite_edit_cd 600

# Show Options + Sound
function ctf:edit/bombsite/add/options
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5 1

# Open Menu
function ctf:edit/bombsite/session/open with storage ctf:temp bombsite_editor.held