# /function jpad:create { type:jump, width:2, sound:none, particle:none, strength:10, gravity:5 }

# ----- Prepare to Store -----
data remove storage jpad:temp edit 

# Store Variables to make next pad
$data modify storage jpad:temp edit.type set value $(type)
$data modify storage jpad:temp edit.width set value $(width)
$data modify storage jpad:temp edit.length set value $(length)
$data modify storage jpad:temp edit.sound set value $(sound)
$data modify storage jpad:temp edit.particle set value $(particle)
$data modify storage jpad:temp edit.strength set value $(strength)
$data modify storage jpad:temp edit.gravity set value $(gravity)

#summon 