# store in scoreboard for math reasons
execute store result score $tmp.x temp run data get entity @s data.velocity.x 10000
execute store result score $tmp.y temp run data get entity @s data.velocity.y 10000
execute store result score $tmp.z temp run data get entity @s data.velocity.z 10000

# flip velocity when in block
scoreboard players set !-1 temp -1

# apply
function vpvp:physics/apply_x with entity @s data.velocity
execute unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.x temp *= !-1 temp
execute unless block ~ ~ ~ #minecraft:air run function vpvp:physics/apply_x with entity @s data.velocity



# store back into data
execute store result entity @s data.velocity.x float 0.0001 run scoreboard players get $tmp.x temp
execute store result entity @s data.velocity.y float 0.0001 run scoreboard players get $tmp.y temp
execute store result entity @s data.velocity.z float 0.0001 run scoreboard players get $tmp.z temp

