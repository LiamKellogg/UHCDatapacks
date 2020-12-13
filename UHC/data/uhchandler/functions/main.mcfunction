# Event Handlers
# Player dies in event (scoreboard trigger for death)
execute as @a[tag=Event, scores={deathTrigger=1..}] run gamemode spectator @s
execute as @a[gamemode=spectator, tag=Event] run tag @s remove Event
execute as @a[gamemode=spectator, tag=indeathmatch] run tag @s remove indeathmatch

# The CLOCK

# timetillpvp, then border shrink to 250x250, then timetilldm
execute if score seconds clock > timetillpvp clock if score haspvppassed gameStats matches 0 run function uhchandler:enablepvp
execute if score seconds clock > timetilldm clock if score haspvppassed gameStats matches 1.. run function uhchandler:startdeathmatch

# Advance time
execute if score ticks clock matches 20.. run scoreboard players add seconds clock 1
execute if score ticks clock matches 20.. run scoreboard players set ticks clock 0
execute if score seconds clock matches 0.. run scoreboard players add ticks clock 1

# Number of people playersAlive
scoreboard players set playersAlive gameStats 0
execute as @a[tag=Event] run scoreboard players add playersAlive gameStats 1
execute if score playersAlive gameStats matches 0..3 if score haspvppassed gameStats matches 1 run scoreboard players set seconds clock 0
execute if score playersAlive gameStats matches 0..3 if score haspvppassed gameStats matches 1 run scoreboard players set haspvppassed gameStats 2

# Golden head management
tag @a[tag=Event, tag=eatingGHead, nbt=!{SelectedItem: {tag: {display: {Name: '{"text":"Golden Head","bold":true,"color":"gold", "italic": false}'}}}}] remove eatingGHead
tag @a[tag=Event, tag=!eatingGHead, nbt={SelectedItem: {tag: {display: {Name: '{"text":"Golden Head","bold":true,"color":"gold", "italic": false}'}}}}] add primedGHead
scoreboard players set @a[tag=primedGHead] sneakTime 0
tag @a[tag=primedGHead] add eatingGHead
tag @a[tag=primedGHead] remove primedGHead
execute as @a[tag=eatingGHead] if score @s sneakTime > consumableTime sneakTime run tag @s add consumeGHead
execute if entity @a[tag=consumeGHead] run function uhchandler:consumeghead
