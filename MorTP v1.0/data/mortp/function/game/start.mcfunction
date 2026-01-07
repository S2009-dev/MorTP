execute unless entity @s[team=mortp.master] run return run tellraw @s {"translate": "mortp.error.not_master"}
execute if score mortp.config mortp.config.in_game matches 1 run return run tellraw @s {"translate": "mortp.error.in_game"}
execute if score mortp.players mortp.players.count matches ..1 run return run tellraw @s {"translate": "mortp.error.players_count"}

effect give @a[tag=mortp.dead] slow_falling 60 255 true

gamemode survival @a[tag=mortp.dead]

tag @e[tag=mortp.player,tag=mortp.podium.bronze] remove mortp.podium.bronze
tag @e[tag=mortp.player,tag=mortp.podium.silver] remove mortp.podium.silver
tag @e[tag=mortp.player,tag=mortp.podium.gold] remove mortp.podium.gold
tag @e[tag=mortp.player,tag=mortp.dead] remove mortp.dead

scoreboard players set @a mortp.death 0
scoreboard players set mortp.config mortp.config.in_game 1
scoreboard players set mortp.countdown mortp.countdown.ticks 0

execute store result score mortp.countdown mortp.countdown.seconds run scoreboard players get mortp.config mortp.config.timer
execute as @a at @s run playsound entity.experience_orb.pickup ui @s

title @a[tag=mortp.player] times 20 20 20
title @a[tag=mortp.player] title {translate: "mortp.game.start"}