# Stop if player already got list
execute if entity @s[tag=ctf_bombsite_assigning_map] run return fail

# List Maps !! Make this loop with map regitry
tellraw @s {text:"Desert Maze",bold:true,underlined:true,color:"gold",click_event:{action:"suggest_command",command:"/function ctf:edit/bombsite/item/assign_map/assign {\"map\":\"desert_maze\"}"}}
tellraw @s {text:"Sandcastle",bold:true,underlined:true,color:"yellow",click_event:{action:"suggest_command",command:"/function ctf:edit/bombsite/item/assign_map/assign {\"map\":\"sandcastle\"}"}}


# Tag player
tag @s add ctf_bombsite_assigning_map