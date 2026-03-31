# https://www.reddit.com/r/MinecraftCommands/comments/1cu1prd/wiki_update_restoring_scoreboards_after_changing/

run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}

# Store the user's name into mail:temporary_username
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot mail:player_head
data modify storage mail:temporary_username name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.components."minecraft:profile".name

kill 3ecf96f6-5342-4ab1-a629-10926cea8230