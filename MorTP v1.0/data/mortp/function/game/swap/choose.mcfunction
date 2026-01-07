scoreboard players set mortp.players mortp.players.random -1
scoreboard players operation mortp.players mortp.players.random > @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] mortp.players.random

execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run execute at @s run summon marker ^ ^ ^ {Tags:["mortp.swap.1.mark"]}
execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run tag @s add mortp.swap.1
execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run scoreboard players set @s mortp.players.random -1

scoreboard players set mortp.players mortp.players.random -1
scoreboard players operation mortp.players mortp.players.random > @e[tag=mortp.player,tag=mortp.living] mortp.players.random

execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run execute at @s run summon marker ^ ^ ^ {Tags:["mortp.swap.2.mark"]}
execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run tag @s add mortp.swap.2
execute as @e[tag=mortp.player,tag=mortp.living,tag=!mortp.swap] if score @s mortp.players.random = mortp.players mortp.players.random run scoreboard players set @s mortp.players.random -1

function mortp:game/swap/teleport