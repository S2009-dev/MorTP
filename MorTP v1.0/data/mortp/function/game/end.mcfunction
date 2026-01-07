function mortp:game/stop

tag @e[tag=mortp.player,tag=mortp.living] add mortp.podium.gold

data modify storage mortp:podium bronze_id set from entity @e[tag=!mortp.podium.gold,tag=!mortp.podium.silver,tag=mortp.podium.bronze,limit=1] UUID
data modify storage mortp:podium silver_id set from entity @e[tag=!mortp.podium.gold,tag=mortp.podium.silver,tag=mortp.podium.bronze,limit=1] UUID
data modify storage mortp:podium gold_id set from entity @e[tag=mortp.podium.gold,tag=mortp.podium.silver,tag=mortp.podium.bronze,limit=1] UUID

schedule function mortp:podium/show 2s