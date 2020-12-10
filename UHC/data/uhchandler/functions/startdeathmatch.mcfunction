# setup the structure blocks, then load that baby in
#setblock ~ ~ ~ minecraft:structure_block[mode=load]{mirror:"NONE", ignoreEntities:1b, powered:0b, seed:0L, author:"LamTheNurd", rotation:"NONE", mode:"LOAD", posX: 0, posY:0, posZ: 0, sizeX:32, integrity:1.0f, showair:0b, name:"moderncombat:<bedrock#>", sizeY:32, sizeZ:32, showboundingbox:1b}

gamerule doMobSpawning false
gamerule doMobLoot false

setblock 0 100 0 minecraft:structure_block[mode=load]{mirror:"NONE", ignoreEntities:0b, powered:0b, seed:0L, author:"LamTheNurd", rotation:"NONE", mode:"LOAD", posX: 0, posY:0, posZ: 0, sizeX:34, integrity:1.0f, showair:0b, name:"uhchandler:deathmatchquart", sizeY:34, sizeZ:34, showboundingbox:1b}
setblock 0 101 0 minecraft:redstone_block

setblock 0 100 0 minecraft:structure_block[mode=load]{mirror:"NONE", ignoreEntities:0b, powered:0b, seed:0L, author:"LamTheNurd", rotation:"CLOCKWISE_90", mode:"LOAD", posX: 0, posY:0, posZ: 0, sizeX:34, integrity:1.0f, showair:0b, name:"uhchandler:deathmatchquart", sizeY:34, sizeZ:34, showboundingbox:1b}
setblock 0 101 0 minecraft:redstone_block

setblock 0 100 0 minecraft:structure_block[mode=load]{mirror:"NONE", ignoreEntities:0b, powered:0b, seed:0L, author:"LamTheNurd", rotation:"CLOCKWISE_180", mode:"LOAD", posX: 0, posY:0, posZ: 0, sizeX:34, integrity:1.0f, showair:0b, name:"uhchandler:deathmatchquart", sizeY:34, sizeZ:34, showboundingbox:1b}
setblock 0 101 0 minecraft:redstone_block

setblock 0 100 0 minecraft:structure_block[mode=load]{mirror:"NONE", ignoreEntities:0b, powered:0b, seed:0L, author:"LamTheNurd", rotation:"COUNTERCLOCKWISE_90", mode:"LOAD", posX: 0, posY:0, posZ: 0, sizeX:34, integrity:1.0f, showair:0b, name:"uhchandler:deathmatchquart", sizeY:34, sizeZ:34, showboundingbox:1b}
setblock 0 101 0 minecraft:redstone_block

tag @r[tag=Event, tag=!indeathmatch] add deathmatchtp
effect give @p[tag=deathmatchtp] minecraft:resistance 1 10
tp @p[tag=deathmatchtp] -29.5 102 0.5
tag @p[tag=deathmatchtp] add indeathmatch
tag @a[tag=Event] remove deathmatchtp

tag @r[tag=Event, tag=!indeathmatch] add deathmatchtp
effect give @p[tag=deathmatchtp] minecraft:resistance 1 10
tp @p[tag=deathmatchtp] 29.5 102 0.5
tag @p[tag=deathmatchtp] add indeathmatch
tag @a[tag=Event] remove deathmatchtp

tag @r[tag=Event, tag=!indeathmatch] add deathmatchtp
effect give @p[tag=deathmatchtp] minecraft:resistance 1 10
tp @p[tag=deathmatchtp] 0.5 102 29.5
tag @p[tag=deathmatchtp] add indeathmatch
tag @a[tag=Event] remove deathmatchtp

tag @r[tag=Event, tag=!indeathmatch] add deathmatchtp
effect give @p[tag=deathmatchtp] minecraft:resistance 1 10
tp @p[tag=deathmatchtp] 0.5 102 -29.5
tag @p[tag=deathmatchtp] add indeathmatch
tag @a[tag=Event] remove deathmatchtp

scoreboard players set seconds clock -1
