# Prevent Strays if Player Leaves server

# Left Click Detection
execute on attacker run tag @s add jpad_lmb

# Right Click Detection
execute on target run tag @s add jpad_rmb



#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}