# Sends mail $(index) from mail:temporary_mail in chat.

# /tellraw @s [{"storage":"mail:temporary_mail","nbt":"Mail[1]"}]
# /data remove storage mail:temporary_mail Mail[0]
$tellraw @s [{"text":"$(index). ", "color":"white"},{"text":"[Delete] ","color":"red", "click_event":{"action":"run_command","command":"/function mail:player/delete_mail {index:$(index)}"}},{"color":"gold","storage":"mail:temporary_mail","nbt":"Mail[$(index)]"}]