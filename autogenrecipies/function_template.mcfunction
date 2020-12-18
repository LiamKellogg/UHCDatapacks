recipe take @s <namespace>:<recipe>
advancement revoke @s only <namespace>:<recipe>_adv

execute if score @s <recipe>_ct matches ..<max_craft - 1> run give @s <reward_item>
scoreboard players add @s <recipe>_ct 1

execute if score @s <recipe>_ct matches <max_craft + 1>.. run title @s times 3 30 8
execute if score @s <recipe>_ct matches <max_craft + 1>.. run title @s title "You cannot craft more, L"

clear @s minecraft:knowledge_book


# loop the ingredient items
