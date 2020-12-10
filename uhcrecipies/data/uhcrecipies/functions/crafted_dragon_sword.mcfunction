recipe take @s uhcrecipies:dragon_sword

advancement revoke @s only uhcrecipies:dragon_sword_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1

# 3 Max crafts
execute if score @s dragon_swd_ct matches 0 run give @s diamond_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;439,684,724,99]}, {AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;439,684,724,99]}]} 1
scoreboard players add @s dragon_swd_ct 1
# L
execute if score @s dragon_swd_ct matches 2.. run title @s times 3 30 8
execute if score @s dragon_swd_ct matches 2.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s dragon_swd_ct matches 2.. run give @s minecraft:blaze_powder 2
execute if score @s dragon_swd_ct matches 2.. run give @s minecraft:obsidian 2
execute if score @s dragon_swd_ct matches 2.. run give @s minecraft:diamond_sword
clear @s minecraft:knowledge_book
