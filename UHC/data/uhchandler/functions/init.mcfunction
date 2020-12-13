gamerule doDaylightCycle true
time set 0
gamerule doWeatherCycle false
weather clear
gamerule doMobSpawning true
gamerule doMobLoot true

# Scoreboard reset

# Player enters server for first time
# Set world spawn to a pressure plate that activates a function

# Player hearts
scoreboard objectives remove playerHearts
scoreboard objectives add playerHearts health
scoreboard objectives setdisplay list playerHearts
# add players on event start

# Player death trigger
scoreboard objectives remove deathTrigger
scoreboard objectives add deathTrigger deathCount
# add players on event start

# GameStats
scoreboard objectives remove gameStats
scoreboard objectives add gameStats dummy
scoreboard players add haspvppassed gameStats 0
scoreboard players add playersAlive gameStats 0
scoreboard players add dmcanstart gameStats 0
# execute as @a[tag=Event]

# The Clock
scoreboard objectives remove clock
scoreboard objectives add clock dummy
scoreboard objectives setdisplay sidebar clock

# 15 minutes peaceful
# 5 minutes till dm
scoreboard players set timetillpvp clock 900
scoreboard players set timetilldm clock 300
scoreboard players set seconds clock -1
scoreboard players set ticks clock 0

# Sneak Time
scoreboard objectives remove sneakTime
scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard players set consumableTime sneakTime 30

# Tag reset
tag @a remove Event
tag @a remove deathmatchtp
tag @a remove indeathmatch
# List of tags:

# forceload 0 0
forceload add -3 -3 3 3
