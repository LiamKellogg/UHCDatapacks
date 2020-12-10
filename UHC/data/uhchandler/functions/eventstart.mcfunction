function uhchandler:init
tag @a add Event
# Spread players
spreadplayers 0 0 75 500 false @a[tag=Event]

# Border
worldborder center 0 0
worldborder set 1050 1

# add players to hearts and deathTrigger
scoreboard players add @a[tag=Event] playerHearts
scoreboard players add @a[tag=Event] deathTrigger

# disable pvp
team empty nopvp
team add nopvp "PVP is disabled, pls dont break the rules"
execute as @a[tag=Event] run team join nopvp
team modify nopvp collisionRule never
team modify nopvp color red
team modify nopvp friendlyFire false

# Give players stone tools
replaceitem entity @a[tag=Event] hotbar.0 minecraft:stone_pickaxe{Enchantments: [{lvl: 3s, id: "minecraft:efficiency"}]}

replaceitem entity @a[tag=Event] hotbar.1 minecraft:stone_axe{Enchantments: [{lvl: 3s, id: "minecraft:efficiency"}]}

replaceitem entity @a[tag=Event] hotbar.2 minecraft:stone_sword{Enchantments: [{lvl: 1s, id: "minecraft:sharpness"}]}

replaceitem entity @a[tag=Event] hotbar.3 minecraft:stone_shovel{Enchantments: [{lvl: 3s, id: "minecraft:efficiency"}]}

gamemode survival @a[tag=Event]
effect give @a[tag=Event] minecraft:absorption 180 2 true
effect give @a[tag=Event] minecraft:health_boost 10000 4 false
effect give @a[tag=Event] minecraft:instant_health 3 40 true
effect give @a[tag=Event] minecraft:saturation 4 20 true

scoreboard players set seconds clock 1
