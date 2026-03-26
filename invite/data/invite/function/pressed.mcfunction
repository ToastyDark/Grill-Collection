# Set to Gold Block
execute on passengers run data modify entity @s item.id set value "minecraft:gold_block"

# Set State
data modify entity @s data.state set value 2

# Start Invite Cooldown Timer
$stopwatch create invite:$(game)

# Play Click Sound
execute on target run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.3 1.4 0.2


# Send Invite
execute on target run function invite:send_invite with entity @n[type=interaction,tag=bacon_invite] data