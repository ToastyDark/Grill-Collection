# Don't kill if riding interaction
execute on vehicle if entity @s[type=interaction] run return fail

# Kill
kill @s[type=item_display]