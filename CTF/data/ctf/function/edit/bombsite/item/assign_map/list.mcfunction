# Stop if player already got list
execute if entity @s[tag=ctf_bombsite_assigning_map] run return fail

# List Maps
tellraw @s {text:"Sandcastle",bold:true,underlined:true,color:"gold",click_event:{action:"suggest_command",command:"/function ctf:edit/bombsite/item/assign_map/assign {\"map\":\"sandcastle\"}"}}


# Tag player
tag @s add ctf_bombsite_assigning_map