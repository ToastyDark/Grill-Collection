# Check for players who can jump on the pad
# Outline True
$execute align xz positioned ~ ~ ~ as @a if entity @s[dx=$(length),dy=1,dz=$(width)] at @s run playsound entity.player.levelup master @s
# Outline False


# Check for players who can edit the pad