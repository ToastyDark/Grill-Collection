# Tally Invites and let player know
function invite:msg/invite_tally with entity @s data
data modify entity @s data.invite_tally set value 0

# Stop Stopwatch
$stopwatch remove invite:$(game)

# Remove stored Inviter ID
data modify entity @s data.inviter_id set value 0

# Set to Emerald Block
execute on passengers run data modify entity @s item.id set value "minecraft:emerald_block"

# Set State
data modify entity @s data.state set value 1

# Set Text
execute on passengers on passengers run data modify entity @s text set value ["",{"text":"Click to Invite","color":"green","bold": true}]

# Pop sound
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.3 0.4 0.2