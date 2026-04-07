# Remove Tag?
$execute align xz positioned ~0.9 ~ ~0.9 as @a[tag=jpad_over] unless entity @s[dx=$(length),dy=1,dz=$(width)] run function _jpad:pad/left_pad


# Check for players who are within the pad
$execute align xz positioned ~0.9 ~ ~0.9 as @a if entity @s[dx=$(length),dy=4,dz=$(width)] at @s run tag @s add jpad_over

# Execute on players standing on pad
execute at @s as @a[tag=jpad_over] run function _jpad:pad/players_over_pad with entity @n[type=armor_stand,tag=jpad_jump_pad,distance=..2] data

# Add Editors to Stand
function _jpad:pad/editor/main
