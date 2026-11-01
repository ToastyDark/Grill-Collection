# Reset Message
data modify storage ctf:temp bombsite_editor.tellraw set value [{text:"",color:"gray"}]
$data modify storage ctf:temp bombsite_editor.tellraw append from storage ctf:map $(map).display_name
data modify storage ctf:temp bombsite_editor.tellraw append value {text:" Bombsites",color:"gold",bold:true}

# Loop Append Bombsite Info
$function ctf:edit/bombsite/info_dump/loop/prep {map:"$(map)",team_num:1}

# Loop Append Bombsite Info
$function ctf:edit/bombsite/info_dump/loop/prep {map:"$(map)",team_num:2}

# Print Message
function ctf:edit/bombsite/info_dump/print with storage ctf:temp bombsite_editor