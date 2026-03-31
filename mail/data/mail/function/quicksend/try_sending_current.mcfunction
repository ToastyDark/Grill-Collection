summon item_display ~ ~ ~ {UUID:[I;1901451315,-1011660315,-1221907382,-566135795]}

# (mainhand has priority)
item replace entity 7155d833-c3b3-49e5-b72b-2c4ade41740d container.0 from entity @s weapon.offhand
item replace entity 7155d833-c3b3-49e5-b72b-2c4ade41740d container.0 from entity @s weapon.mainhand

data modify storage mail:quicksend temp_book set from entity 7155d833-c3b3-49e5-b72b-2c4ade41740d item.components.minecraft:written_book_content

# first 5 letters of title should be 'mail:'
data modify storage mail:quicksend prefix set string storage mail:quicksend temp_book.title.raw 0 5
execute store success storage mail:quicksend is_not_actually_mail byte 1 run data modify storage mail:quicksend prefix set value "mail:"

execute if data storage mail:quicksend {is_not_actually_mail:1b} run return fail

data modify storage mail:quicksend recipient set string storage mail:quicksend temp_book.title.raw 5
data modify storage mail:quicksend message set string storage mail:quicksend temp_book.pages[0].raw

# i forgot why but messages need to be surround with quotes
function mail:quicksend/padmessage with storage mail:quicksend

# remove book from the mainhand, or the offhand if there was no mainhand
execute if items entity @s weapon.mainhand minecraft:written_book run scoreboard players set $quill_is_in_mainhand mail.misc 1
execute unless items entity @s weapon.mainhand minecraft:written_book run scoreboard players set $quill_is_in_mainhand mail.misc 0

execute if score $quill_is_in_mainhand mail.misc matches 1 run item replace entity @s weapon.mainhand with air
execute if score $quill_is_in_mainhand mail.misc matches 0 run item replace entity @s weapon.offhand with air

# (mail:send handles notification)
function mail:send with storage mail:quicksend

kill 7155d833-c3b3-49e5-b72b-2c4ade41740d