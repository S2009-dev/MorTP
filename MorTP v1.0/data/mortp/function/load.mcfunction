gamerule immediate_respawn true

team add mortp.master {translate: "mortp.team.master"}
team modify mortp.master color dark_red

scoreboard objectives add mortp.debug dummy "§c§lMor§6§lTP §f§lDebug"
scoreboard objectives add mortp.death deathCount

scoreboard objectives add mortp.config.countdown dummy
scoreboard objectives add mortp.config.debugging dummy
scoreboard objectives add mortp.config.in_game dummy
scoreboard objectives add mortp.config.timer dummy

scoreboard objectives add mortp.countdown.seconds dummy
scoreboard objectives add mortp.countdown.ticks dummy

scoreboard objectives add mortp.players.living dummy
scoreboard objectives add mortp.players.random dummy
scoreboard objectives add mortp.players.count dummy
scoreboard objectives add mortp.players.dead dummy
scoreboard objectives add mortp.players.real dummy
scoreboard objectives add mortp.players.npc dummy

scoreboard players set mortp.config mortp.config.countdown 5
scoreboard players set mortp.config mortp.config.in_game 0
scoreboard players set mortp.config mortp.config.timer 300

scoreboard players set mortp.countdown mortp.countdown.seconds 0
scoreboard players set mortp.countdown mortp.countdown.ticks 0

scoreboard players set mortp.players mortp.players.random -1
scoreboard players set mortp.players mortp.players.living 0
scoreboard players set mortp.players mortp.players.count 0
scoreboard players set mortp.players mortp.players.dead 0
scoreboard players set mortp.players mortp.players.real 0
scoreboard players set mortp.players mortp.players.npc 0

execute as @a at @s run playsound entity.experience_orb.pickup ui @s