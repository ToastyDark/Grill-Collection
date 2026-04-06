# Get Score
execute store result score $current_gravity temp run data get entity @s data.gravity 100
#Check if already too low
execute if score $current_gravity temp matches ..-1 run return run execute as @p run function _jpad:msg/error_sound
# Remove 1
scoreboard players remove $current_gravity temp 1
execute store result entity @s data.gravity double 0.01 run scoreboard players get $current_gravity temp
scoreboard players reset $current_gravity temp

# Play Sound
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.4 1