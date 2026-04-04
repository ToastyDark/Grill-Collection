# Remove old
data remove entity @s data.editors


# Add new editors
execute at @s as @a if entity @s[tag=jpad_editor,tag=jpad_over] run function _jpad:pad/editor/get_id