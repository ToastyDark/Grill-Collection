# Get Score
execute store result score $current_length temp run data get entity @s data.length
#Check if already too high
execute if score $current_length temp matches 15.. run return run execute as @p run function _jpad:msg/error_sound
# Add 1
scoreboard players add $current_length temp 1
execute store result entity @s data.length int 1 run scoreboard players get $current_length temp
scoreboard players reset $current_length temp



# Respawn Display
function _jpad:display/start

# Play Sound
playsound minecraft:block.scaffolding.place master @a ~ ~ ~ 0.6 2 0.6