# Cancel if player takes too long to confirm
scoreboard players remove @s ctf_bombsite_edit_cd 1
execute if entity @s[scores={ctf_bombsite_edit_cd=..0}] run function ctf:edit/bombsite/add/cancel