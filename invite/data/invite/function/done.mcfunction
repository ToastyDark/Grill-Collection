# Stop Stopwatch
$stopwatch remove invite:$(game)

# Set to Emerald Block
execute on passengers run data modify entity @s item.id set value "minecraft:emerald_block"

# Set State
data modify entity @s data.state set value 1

# Pop sound
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.3 0.4 0.2