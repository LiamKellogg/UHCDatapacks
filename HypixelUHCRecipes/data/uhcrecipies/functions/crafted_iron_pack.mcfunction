recipe take @s uhcrecipies:iron_pack

advancement revoke @s only uhcrecipies:iron_pack_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1

# 3 Max crafts
execute if score @s iron_pack_count matches ..2 run give @s minecraft:iron_ingot 10
scoreboard players add @s iron_pack_count 1
# L
execute if score @s iron_pack_count matches 4.. run title @s times 3 30 8
execute if score @s iron_pack_count matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s iron_pack_count matches 4.. run give @s minecraft:iron_ore 10
execute if score @s iron_pack_count matches 4.. run give @s minecraft:coal 1
clear @s minecraft:knowledge_book
