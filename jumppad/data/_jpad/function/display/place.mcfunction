# Spawn Display
$summon block_display ~ ~ ~ {Tags:["jpad","jpad_display",jpad_display_new],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[$(row).0f,-0.0612f,$(column).0f],scale:[1f,0.01f,1f]},block_state:{Name:"minecraft:$(block)"}}

# Mount
execute as @n[type=block_display,tag=jpad_display_new] run ride @s mount @n[type=armor_stand,tag=jpad_jump_pad]

# Remove Tag
execute on passengers if entity @s[tag=jpad_display_new] run tag @s remove jpad_display_new