summon minecraft:item_display ~ ~ ~ {Tags:["gravity_blob", "19ni21i_tmp"], item:{id:apple}, billboard:center, teleport_duration:1}

data modify entity @e[tag=19ni21i_tmp,limit=1] data.velocity.x set from entity @s Motion[0]
data modify entity @e[tag=19ni21i_tmp,limit=1] data.velocity.y set from entity @s Motion[1]
data modify entity @e[tag=19ni21i_tmp,limit=1] data.velocity.z set from entity @s Motion[2]

execute as @e[tag=19ni21i_tmp] run function vpvp:physics/halve_velocity

kill @s
tag @e[tag=19ni21i_tmp] remove 19ni21i_tmp