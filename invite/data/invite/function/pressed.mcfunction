# Set to Gold Block
execute as @n[type=interaction,tag=bacon_invite] on passengers run data modify entity @s item.id set value "minecraft:gold_block"

# Set State
execute as @n[type=interaction,tag=bacon_invite] run data modify entity @s data.state set value 2

# Send Invite
function invite:send_invite with entity @n[type=interaction,tag=bacon_invite] data