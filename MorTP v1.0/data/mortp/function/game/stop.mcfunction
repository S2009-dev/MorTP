scoreboard players set mortp.config mortp.config.in_game 0

execute as @a at @s run playsound entity.experience_orb.pickup ui @s

title @a times 10 20 10
title @a title {translate: "mortp.game.stop"}