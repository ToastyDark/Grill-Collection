 # Check if player jumped while over a pad
# Stop if player hasn't jumped
execute unless entity @s[scores={jpad_jumped=1..}] run return fail
scoreboard players reset @s jpad_jumped

# Stop if Player isn't over a jump pad
execute unless entity @s[tag=jpad_over] run return fail


# Give Jump Tag
tag @s add jpad_jumped