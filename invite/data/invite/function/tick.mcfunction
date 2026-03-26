# Interaction tick
execute as @e[type=interaction,tag=bacon_invite] at @s run function invite:int with entity @s data

# Kill Left Overs
execute as @e[type=item_display,tag=bacon_invite_display] run function invite:kill/item_display
execute as @e[type=text_display,tag=bacon_invite_text] run function invite:kill/text_display