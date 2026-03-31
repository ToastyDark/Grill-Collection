# Check if any player matches the ID of potentially the left behind armor stand
$execute unless entity @a[scores={id=$(check_left_id)}] run function _jpad:player/editor/kill