# Stop if no block in offhand
execute if items entity @s weapon.offhand air run return run function _jpad:msg/hold_block


# Get block from off_hand
data modify entity @s data.block set from entity @p equipment.offhand.id

# Respawn Display
function _jpad:display/start

# Play Sound
playsound minecraft:block.amethyst_block.place master @p ~ ~ ~ 1 1 1