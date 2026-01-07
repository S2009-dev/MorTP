tag @e[tag=mortp.player,tag=mortp.dead] remove mortp.living
tag @e[tag=mortp.player,tag=!mortp.dead] add mortp.living

scoreboard players set mortp.players mortp.players.living 0
scoreboard players set mortp.players mortp.players.count 0
scoreboard players set mortp.players mortp.players.dead 0
scoreboard players set mortp.players mortp.players.real 0
scoreboard players set mortp.players mortp.players.npc 0

execute at @e[tag=mortp.living] run scoreboard players add mortp.players mortp.players.living 1
execute at @e[tag=mortp.player] run scoreboard players add mortp.players mortp.players.count 1
execute at @e[tag=mortp.dead] run scoreboard players add mortp.players mortp.players.dead 1

execute at @e[type=mannequin,tag=mortp.player] run scoreboard players add mortp.players mortp.players.npc 1
execute at @a[tag=mortp.player] run scoreboard players add mortp.players mortp.players.real 1
