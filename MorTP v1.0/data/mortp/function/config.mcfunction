execute unless entity @s[team=mortp.master] run return run tellraw @s {"translate": "mortp.error.not_master"}

execute store result storage mortp:config current_countdown int 1 run scoreboard players get mortp.config mortp.config.countdown
execute store result storage mortp:config current_timer int 1 run scoreboard players get mortp.config mortp.config.timer

data modify storage mortp:config action_template set value "function mortp:utils/save_config {timer: $(timer), countdown: $(countdown)}"

function mortp:dialog/config with storage mortp:config