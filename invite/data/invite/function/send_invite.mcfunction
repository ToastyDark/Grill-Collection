# Stop if someone has already sent an invite

$tellraw @s ["",{selector:"@s"},{text:" has invited you to play $(game)!",bold:true,color:"green"}]