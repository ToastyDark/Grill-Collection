# Give Flag Claw
#/setblock -302 90 -218 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Slot:13b,components:{"minecraft:can_break":{blocks:[]},"minecraft:consumable":{consume_seconds:50.0f,has_consume_particles:0b},"minecraft:custom_data":{ctf_flag_claw:1b,original_slot:8},"minecraft:item_name":{bold:1b,color:"white",text:"Flag Claw"},"minecraft:lore":[{color:"blue",italic:0b,text:"Used to grab flags"}],"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable","minecraft:can_break"]},"minecraft:unbreakable":{}},count:1,id:"minecraft:shears"}],components:{}}


# Make sure main hand is empty
execute unless items entity @s weapon.mainhand air run return run function ctf:lobby/tutorial/msg/non_empty_hand

# Give Flag Claw
item replace entity @s weapon.mainhand with shears

# Tag Player
tag @s add ctf_tutorial

# Play Sound
