# CloudWolf a genius: https://www.youtube.com/watch?v=gY0Q1hLu-ms

give @s minecraft:player_head{display:{Name:"{\"text\":\"Golden Head\",\"bold\":true,\"color\":\"gold\", \"italic\": false}"}, SkullOwner: {Id: [I; -370054180, 1337280163, -2038532536, -446316733], Properties: {textures: [{Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwNzEzODQxNDE2OCwKICAicHJvZmlsZUlkIiA6ICJlOWYxNmJkYzRmYjU0NmEzODY3ZTc2NDhlNTY1YmY0MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJTcGVjaWFsc0siLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjk4Nzg4NTM2NTRjM2JiMjZmZDMzZTgwZjhlZDNjZGYwM2FiMzI0N2Y3MzY3ODQ2NGUwNmRhMTQzZGJkMGMxNyIKICAgIH0KICB9Cn0="}]}}} 1

# Name NBT of golden head in json format. This does not carry over when the playerhead is placed
# {\"text\":\"Golden Head\",\"bold\":true,\"color\":\"gold\", \"italic\": false}
# Selector for players who have a ghead in their hand (NOT THE OFFHAND)

# Loop Function:
#   Select all players with nbt={} and tagged not with primedGHead or EatingGHead and set tag primedGHead
#   Select all with primedGHead run reset crouch timer
#   Select all with primedGHead run set tag EatingGHead
#   Select all with primedGHead run remove tag primedGHead
#   Select all players with nbt={} and score{} for sneak time, run the function comsumeghead
#   execute if <insert selector>, run the function comsumeghead
# /execute as @a[nbt={SelectedItem: {tag: {display: {Name: '{"text":"Golden Head","bold":true,"color":"gold", "italic": false}'}}}}] run say hello

# Consumeghead:
# effects:
#   Saturation 3 1 (3 hunger bars)
#   Speed 6 2
#   Regeneration 4 2
# Clear tag from players

# Problems:
# - Will not remove heads in order of hotbar to inventory to offhand, this is minor but the fix is a lot since we cant run a replaceitem
# - If the player places the ghead it turns back into a regular playerhead
# - The player can stop sneaking in between and the sneak timer does not reset. This doesn't really matter.
