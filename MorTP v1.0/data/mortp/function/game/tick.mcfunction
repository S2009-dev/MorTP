scoreboard players add mortp.countdown mortp.countdown.ticks 1

execute if score mortp.countdown mortp.countdown.ticks matches 20 run scoreboard players remove mortp.countdown mortp.countdown.seconds 1
execute if score mortp.countdown mortp.countdown.ticks matches 20 run scoreboard players set mortp.countdown mortp.countdown.ticks 0

execute if score mortp.countdown mortp.countdown.seconds <= mortp.config mortp.config.countdown run function mortp:game/swap/countdown
execute if score mortp.countdown mortp.countdown.seconds matches 0 run function mortp:game/swap/execute

execute if score mortp.players mortp.players.living matches ..3 run tag @e[tag=mortp.player,tag=mortp.living] add mortp.podium.bronze
execute if score mortp.players mortp.players.living matches 2 run tag @e[tag=mortp.player,tag=mortp.living] add mortp.podium.silver
execute if score mortp.players mortp.players.living matches 1 run function mortp:game/end

execute as @a[tag=mortp.player,tag=mortp.living] if score @s mortp.death matches 1 run tag @s add mortp.dead
execute as @a[tag=mortp.player,tag=mortp.living] if score @s mortp.death matches 1 run gamemode spectator @s