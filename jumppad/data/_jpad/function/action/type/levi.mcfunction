data modify entity @s data.type set value levi

# Reapply Effects on players
$execute at @s as @a if entity @s[dx=$(length),dy=4,dz=$(width)] run function _jpad:pad/effect/reapply