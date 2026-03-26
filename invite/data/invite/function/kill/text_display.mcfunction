# Don't kill if riding item display
execute on vehicle if entity @s[type=item_display] run return fail

# Kill
kill @s[type=text_display]