# Check if Jump Pad is already here
execute if entity @e[type=armor_stand,distance=..3,tag=jpad_jump_pad] run return run function _jpad:msg/already_jpad

# Spawn Jump Pad Marker
execute align xz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["jpad_jump_pad",jpad_new],Marker:1b,Invulnerable:1b,data:{type:jump,block:slime_block,length:2,width:2,strength:0.5,gravity:-0.05,}}


# Commands for new Marker
execute as @n[type=armor_stand,tag=jpad_jump_pad,tag=jpad_new] at @s run function _jpad:action/create/new_marker



# Msg
scoreboard players set @s actionbar_cd 1
title @s actionbar {text:"Jump Pad Placed",bold:true,color:"green"}