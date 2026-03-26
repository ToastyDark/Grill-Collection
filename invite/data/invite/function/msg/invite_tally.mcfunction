$scoreboard players set @a[scores={id=$(inviter_id)}] actionbar_cd 1
$title @a[scores={id=$(inviter_id)}] actionbar {text:"$(invite_tally) players joined from your invite",bold:true,color:"gold"}