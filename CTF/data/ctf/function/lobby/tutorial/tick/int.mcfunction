# Start Tutorial (Check if Pickup Flag Claw)
execute if entity @s[tag=ctf_tutorial_claw] on target run function ctf:lobby/tutorial/start/start





#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}