$item replace entity @s weapon.mainhand with gunpowder[custom_name=[{"italic":false,"text":"$(display_name)",color:"$(color)",bold:$(bold)},{"bold":true,"color":"red","italic":false,"text":" Bombsite Editor"}],custom_data={ctf_bombsite_editor:true,ctf_map:$(map)},lore=[{"color":"gray","italic":false,"text":"Create and edit CTF Bombsites"},{"color":"gray","italic":false,"text":"Hold and click chat to set map."}],consumable={consume_seconds:50,has_consume_particles:false}] 1

# Play Sound
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2 1