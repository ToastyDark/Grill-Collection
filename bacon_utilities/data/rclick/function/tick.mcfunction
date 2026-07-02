execute as @a[scores={rclick=2..}] run scoreboard players reset @s rclick
execute if score @s rclick matches 1 run return fail