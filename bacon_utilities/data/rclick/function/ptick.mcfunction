# Check if player has clicked
execute unless entity @s[scores={rclick=1..}] run return fail

execute if score @s rclick matches 1 unless entity @s[tag=rclick] run return run tag @s add rclick

# Add Click tag
function rclick:reset