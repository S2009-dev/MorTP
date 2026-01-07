title @a[tag=mortp.player] times 0 20 0

title @a[tag=mortp.player,tag=mortp.living] title {\
    translate: "mortp.game.swap.countdown",\
    with: [{score: {\
        name: "mortp.countdown",\
        objective: "mortp.countdown.seconds"\
    }}]\
}

title @a[tag=mortp.player,tag=mortp.dead] actionbar {\
    translate: "mortp.game.swap.countdown",\
    with: [{score: {\
        name: "mortp.countdown",\
        objective: "mortp.countdown.seconds"\
    }}]\
}

execute if score mortp.countdown mortp.countdown.ticks matches 0 run execute as @a at @s run playsound entity.experience_orb.pickup ui @s