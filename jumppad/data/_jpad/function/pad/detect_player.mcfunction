# Check for players who can jump on the pad
execute align xz positioned ~1 ~ ~1 if entity @a[dx=3,dy=1,dz=3] at @s run playsound entity.player.levelup master @s


# Check for players who can edit the pad