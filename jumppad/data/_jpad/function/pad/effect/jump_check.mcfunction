 # Check if player jumped while over a pad
# Stop if player hasn't jumped
execute unless entity @s[scores={jpad_jumped=1..}] run return fail
scoreboard players reset @s jpad_jumped

# Stop if Player isn't over a jump pad
execute unless entity @s[tag=jpad_over] run return fail


# If levi pad, give levitation
function _jpad:pad/effect/levi/convert_amplifier
execute if data entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data{type:levi} run function _jpad:pad/effect/levi/apply_levi with storage jpad:temp


# Give Jump Tag
tag @s add jpad_jumped