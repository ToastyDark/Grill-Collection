# Check if player has clicked
#execute unless entity @s[scores={rclick=1..}] run return fail

#execute if score @s rclick matches 1 unless entity @s[tag=rclick] run return run tag @s add rclick

# Add Click tag
#execute if entity @s[scores={rclick=1..}] run function rclick:reset


execute if entity @s[tag=rclick] run scoreboard players add @s rclick 1


execute if entity @s[tag=rclick] run return run tag @s remove rclick


execute if entity @s[tag=rclick,scores={rclick=1..}] run function rclick:reset


#execute unless entity @s[scores={rclick=1..}] run return fail

#execute if score @s rclick matches 1 unless entity @s[tag=rclick] run return run tag @s add rclick
