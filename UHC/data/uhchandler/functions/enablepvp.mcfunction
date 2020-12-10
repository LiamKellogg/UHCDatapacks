# Stop timer and other things
scoreboard players set timeadvance gameStats 0
scoreboard players set seconds clock -1
scoreboard players set haspvppassed gameStats 1

# Clear teams
team remove nopvp

title @a times 5 50 10
playsound minecraft:entity.ender_dragon.growl neutral @a ~ ~2 ~ 4
title @a title "PVP is enabled"

# Move the border
worldborder set 300 720
worldborder damage buffer 0
worldborder damage amount 0.2
