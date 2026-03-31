# Check if Jump Pad is already here
execute unless entity @e[type=armor_stand,distance=..1] run return run title @s actionbar {text:"A Jump Pad is already here",bold:true,color:"red"}

# Spawn Jump Pad Marker
execute align xz run summon armor_stand ~ ~ ~ {Tags:["jpad_jump_pad"],Marker:1b,Invulnerable:1b}

# Msg
scoreboard players set @s actionbar_cd 1
title @s actionbar {text:"Jump Pad Placed",bold:true,color:"green"}