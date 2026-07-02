# Stop unless player is holding item
execute unless items entity @s weapon.mainhand gunpowder[minecraft:custom_data~{ctf_bombsite_editor:true}] run return fail

say hi