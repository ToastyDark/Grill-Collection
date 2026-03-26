# Check if interaction clicked
execute on target as @n[type=interaction,tag=bacon_invite] run function invite:pressed with entity @s data

#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}