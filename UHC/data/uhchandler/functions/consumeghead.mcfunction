# Scoreboard: sneakTime
# tags: primedGHead, eatingGHead, consumeGHead

tag @a[tag=consumeGHead] remove eatingGHead
clear @a[tag=consumeGHead] minecraft:player_head{display: {Name: '{"text":"Golden Head","bold":true,"color":"gold", "italic": false}'}} 1
effect give @a[tag=consumeGHead] minecraft:saturation 3 1 true
effect give @a[tag=consumeGHead] minecraft:speed 8 1
effect give @a[tag=consumeGHead] minecraft:regeneration 4 2
execute as @a[tag=consumeGHead] run playsound minecraft:entity.player.burp neutral @s ~ ~ ~ 5
tag @a[tag=consumeGHead] remove consumeGHead
