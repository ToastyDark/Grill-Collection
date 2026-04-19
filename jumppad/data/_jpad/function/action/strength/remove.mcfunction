# Get Score
execute store result score $current_strength temp run data get entity @s data.strength 10
#Check if already too low
execute if score $current_strength temp matches ..-1 run return run execute as @p run function _jpad:msg/error_sound
# Remove 1
scoreboard players remove $current_strength temp 1
execute store result entity @s data.strength double 0.1 run scoreboard players get $current_strength temp
scoreboard players reset $current_strength temp

# Play Sound
playsound minecraft:block.note_block.bit master @p ~ ~ ~ 1 1.4 1

# Reapply Effects on players
$execute at @s as @a if entity @s[dx=$(length),dy=4,dz=$(width)] run function _jpad:pad/effect/reapply