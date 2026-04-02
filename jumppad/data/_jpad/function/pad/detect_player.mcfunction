# Check for players who are within the pad
$execute align xz positioned ~1 ~ ~1 as @a if entity @s[dx=$(length),dy=1,dz=$(width)] at @s run tag @s jpad_over

# Outline True


# Outline False


# Check for players who can edit the pad
execute as @a[tag=jpad_over] at @s run playsound entity.player.levelup


# Remove Tag?
tag @s remove jpad_over