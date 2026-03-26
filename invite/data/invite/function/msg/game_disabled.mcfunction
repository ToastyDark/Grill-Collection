# Msg
scoreboard players set @s actionbar_cd 1
title @s actionbar {text:"Game Disabled",bold:true,color:"red"}

# Play Sound
execute on target at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.3 0.6 0.1