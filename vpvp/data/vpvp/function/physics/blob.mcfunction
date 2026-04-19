# store in scoreboard for math reasons
execute store result score $tmp.x temp run data get entity @s data.velocity.x 10000
execute store result score $tmp.y temp run data get entity @s data.velocity.y 10000
execute store result score $tmp.z temp run data get entity @s data.velocity.z 10000

# flip velocity when in block
scoreboard players set !-1 temp -1
scoreboard players set !gravity temp -500
scoreboard players set !bounce_dampening temp 20
scoreboard players set !bounce_dampening_m temp 17

scoreboard players set !ground_dampening temp 2
scoreboard players set !ground_dampening_m temp 1

# apply
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[vpvp_old_post_tmp]}
execute at @s run function vpvp:physics/apply_x with entity @s data.velocity
execute at @s unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.x temp *= !-1 temp
execute unless score $tmp.y temp matches -1000..1000 run execute at @s unless block ~ ~ ~ #minecraft:air run playsound block.bamboo.break master @a[distance=..30]
execute at @s unless block ~ ~ ~ #minecraft:air run tp @s @e[tag=vpvp_old_post_tmp, limit=1]
# friction
execute at @s unless block ~ ~-0.1 ~ #minecraft:air run scoreboard players operation $tmp.x temp /= !ground_dampening temp
execute at @s unless block ~ ~-0.1 ~ #minecraft:air run scoreboard players operation $tmp.x temp *= !ground_dampening_m temp
kill @e[tag=vpvp_old_post_tmp]

execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[vpvp_old_post_tmp]}
execute at @s run function vpvp:physics/apply_y with entity @s data.velocity
execute at @s unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.y temp *= !-1 temp
execute unless score $tmp.y temp matches -1000..1000 run execute at @s unless block ~ ~ ~ #minecraft:air run playsound block.bamboo.break master @a[distance=..30]
execute at @s unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.y temp /= !bounce_dampening temp
execute at @s unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.y temp *= !bounce_dampening_m temp
execute at @s unless block ~ ~ ~ #minecraft:air run tp @s @e[tag=vpvp_old_post_tmp, limit=1]
kill @e[tag=vpvp_old_post_tmp]

execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[vpvp_old_post_tmp]}
execute at @s run function vpvp:physics/apply_z with entity @s data.velocity
execute at @s unless block ~ ~ ~ #minecraft:air run scoreboard players operation $tmp.z temp *= !-1 temp
execute unless score $tmp.y temp matches -1000..1000 run execute at @s unless block ~ ~ ~ #minecraft:air run playsound block.bamboo.break master @a[distance=..30]
execute at @s unless block ~ ~ ~ #minecraft:air run tp @s @e[tag=vpvp_old_post_tmp, limit=1]
# friction
execute at @s unless block ~ ~-0.1 ~ #minecraft:air run scoreboard players operation $tmp.z temp /= !ground_dampening temp
execute at @s unless block ~ ~-0.1 ~ #minecraft:air run scoreboard players operation $tmp.z temp *= !ground_dampening_m temp
kill @e[tag=vpvp_old_post_tmp]

# gravity
execute if score $tmp.y temp matches -6000.. run scoreboard players operation $tmp.y temp += !gravity temp

# store back into data
execute store result entity @s data.velocity.x float 0.0001 run scoreboard players get $tmp.x temp
execute store result entity @s data.velocity.y float 0.0001 run scoreboard players get $tmp.y temp
execute store result entity @s data.velocity.z float 0.0001 run scoreboard players get $tmp.z temp