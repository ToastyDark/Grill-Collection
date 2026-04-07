# Get Score
execute store result score $current_width temp run data get entity @s data.width
#Check if already too low
execute if score $current_width temp matches ..1 run return run execute as @p run function _jpad:msg/error_sound
# Remove 1
execute store result entity @s data.dwidth int 1 run scoreboard players get $current_width temp
scoreboard players remove $current_width temp 1
execute store result entity @s data.width int 1 run scoreboard players get $current_width temp
scoreboard players reset $current_width temp

# Respawn Display
function _jpad:display/start

# Play Sound
playsound minecraft:block.scaffolding.place master @a ~ ~ ~ 0.6 1.6 0.6