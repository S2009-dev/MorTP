function mortp:utils/count_players

execute if score mortp.config mortp.config.debugging matches 1 run function mortp:debug/tick
execute if score mortp.config mortp.config.in_game matches 1 run function mortp:game/tick
execute if score mortp.config mortp.config.in_game matches 0 run tag @a add mortp.player