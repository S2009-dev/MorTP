title @a times 10 20 10
title @a title {translate: "mortp.podium.show"}

execute if score mortp.players mortp.players.count matches 3.. run schedule function mortp:podium/bronze/preload 2s
execute if score mortp.players mortp.players.count matches 3.. run schedule function mortp:podium/silver/preload 6s
execute if score mortp.players mortp.players.count matches 3.. run schedule function mortp:podium/gold/preload 10s

execute if score mortp.players mortp.players.count matches ..2 run schedule function mortp:podium/silver/preload 2s
execute if score mortp.players mortp.players.count matches ..2 run schedule function mortp:podium/gold/preload 6s