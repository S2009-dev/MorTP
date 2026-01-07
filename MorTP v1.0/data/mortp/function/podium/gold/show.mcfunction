$execute as @a[nbt={UUID:$(gold_id)},limit=1] at @s run playsound ui.toast.challenge_complete ui @s

$title @a subtitle {selector: "@e[nbt={UUID:$(gold_id)},limit=1]"}
$title @a title {player: {id: $(gold_id)}}