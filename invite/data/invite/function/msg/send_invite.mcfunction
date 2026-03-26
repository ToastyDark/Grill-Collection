# Invite Message
#$tellraw @a ["",{selector:"@s"},{text:" has invited everyone to play $(game)!",bold:true,color:"green"}]
$tellraw @a ["",{selector:"@s"},{text:" has invited everyone to play $(game)!",bold:true,color:"green",click_event:{action:"run_command",command:"/function invite:accept with storage bacon:games $(game)"},hover_event:{action:"show_text",value:[]}}]

# Playsound
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1 0.1
schedule function invite:msg/invite_sound 6t append

# Confirmation
scoreboard players set @s actionbar_cd 1
title @s actionbar {text:"Invite Sent",bold:true,color:"green"}