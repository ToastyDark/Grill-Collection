# Get Score
execute store result score $current_gravity temp run data get entity @s data.gravity 100
#Check if already too high
execute unless score $current_gravity temp matches -5..9 run return run execute as @p run function _jpad:msg/error_sound

# Add 1
scoreboard players add $current_gravity temp 1
execute store result entity @s data.gravity double 0.01 run scoreboard players get $current_gravity temp
#scoreboard players reset $current_gravity temp

# Play Sound
playsound minecraft:block.note_block.bit master @p ~ ~ ~ 1 1.8 1

# Reapply Effects on players
$execute at @s as @a if entity @s[dx=$(length),dy=4,dz=$(width)] run function _jpad:pad/effect/reapply