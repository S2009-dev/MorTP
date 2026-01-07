execute store result score mortp.countdown mortp.countdown.seconds run scoreboard players get mortp.config mortp.config.timer

title @a[tag=mortp.player] times 0 20 10

title @a[tag=mortp.player,tag=mortp.living] title {\
    translate: "mortp.game.swap.title",\
}

title @a[tag=mortp.player,tag=mortp.dead] actionbar {\
    translate: "mortp.game.swap.title",\
}

execute as @e[tag=mortp.player,tag=mortp.living] run execute store result score @s mortp.players.random run random value 0..2147483646

function mortp:game/swap/choose

execute as @a at @s run playsound entity.player.teleport ui @s