execute at @e[tag=mortp.swap.1.mark,limit=1] run teleport @e[tag=mortp.swap.2] ^ ^ ^
execute at @e[tag=mortp.swap.2.mark,limit=1] run teleport @e[tag=mortp.swap.1] ^ ^ ^

kill @e[tag=mortp.swap.1.mark]
kill @e[tag=mortp.swap.2.mark]

tag @e[tag=mortp.swap.1] add mortp.swap
tag @e[tag=mortp.swap.2] add mortp.swap

tag @e[tag=mortp.swap.1] remove mortp.swap.1
tag @e[tag=mortp.swap.2] remove mortp.swap.2

execute if entity @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] run function mortp:game/swap/choose
execute unless entity @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] run tag @e[tag=mortp.player,tag=mortp.living] remove mortp.swap