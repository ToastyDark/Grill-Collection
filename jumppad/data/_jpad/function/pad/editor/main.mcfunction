# Remove old
data remove entity @s data.edtiors


# Add new editors
execute at @s as @a if entity @s[tag=jpad_editor,tag=jpad_over] run function _jpad:pad/editor/get_id