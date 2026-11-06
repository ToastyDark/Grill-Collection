# Paste Options
tellraw @s ["",{text:"Team: ",color:"gray"},{text:"[Team 1]",color:"red",bold:true,click_event:{action:"run_command",command:"/function ctf:edit/bombsite/add/set {key:\"team_num\",value:1}"}},{text:"  "},{text:"[Team 2]",color:"blue",bold:true,click_event:{action:"run_command",command:"/function ctf:edit/bombsite/add/set {key:\"team_num\",value:2}"}}]

# Gives Points
tellraw @s ["",{text:"Gives Points: ",color:"gray"},{text:"[Yes]",color:"green",click_event:{action:"run_command",command:"/function ctf:edit/bombsite/add/set {key:\"gives_point\",value:true}"}},{text:"  "},{text:"[No]",color:"red",click_event:{action:"run_command",command:"/function ctf:edit/bombsite/add/set {key:\"gives_point\",value:false}"}}]