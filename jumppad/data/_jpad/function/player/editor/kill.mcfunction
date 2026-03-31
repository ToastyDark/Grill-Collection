# Kill Interaction (Passenger)
execute as @e[type=armor_stand,tag=jpad_marker] if score @s id = @p id on passengers run kill @s

# Kill Armor Stand
execute as @e[type=armor_stand,tag=jpad_marker] if score @s id = @p id run kill @s