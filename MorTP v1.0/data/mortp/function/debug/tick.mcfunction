execute store result score Countdown mortp.debug run scoreboard players get mortp.config mortp.config.countdown
execute store result score InGame mortp.debug run scoreboard players get mortp.config mortp.config.in_game
execute store result score Timer mortp.debug run scoreboard players get mortp.config mortp.config.timer

execute store result score NextSwap mortp.debug run scoreboard players get mortp.countdown mortp.countdown.seconds

execute store result score LivingPlayers mortp.debug run scoreboard players get mortp.players mortp.players.living
execute store result score DeadPlayers mortp.debug run scoreboard players get mortp.players mortp.players.dead
execute store result score RealPlayers mortp.debug run scoreboard players get mortp.players mortp.players.real
execute store result score NPCPlayers mortp.debug run scoreboard players get mortp.players mortp.players.npc
execute store result score Players mortp.debug run scoreboard players get mortp.players mortp.players.count