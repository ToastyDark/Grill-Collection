# Invite Message
$tellraw @a ["",{selector:"@s"},{text:" has invited you to play $(game)!",bold:true,color:"green"}]

# Playsound
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1 0.1
schedule function invite:msg/invite_sound 6t append

# Confirmation
title @s actionbar {text:"Invite Sent",bold:true,color:"green"}