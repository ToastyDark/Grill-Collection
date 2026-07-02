advancement revoke @s only rclick:right_click_50
advancement revoke @s only rclick:right_click

# Add a click
scoreboard players add @s rclick 1
#execute unless score @s rclick matches 1.. run scoreboard players set @s rclick 1