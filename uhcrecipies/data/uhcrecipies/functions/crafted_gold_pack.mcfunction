recipe take @s uhcrecipies:gold_pack

advancement revoke @s only uhcrecipies:gold_pack_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1
# 3 Max crafts
execute if score @s gold_pack_count matches ..2 run give @s minecraft:gold_ingot 10
scoreboard players add @s gold_pack_count 1
# L
execute if score @s gold_pack_count matches 4.. run title @s times 3 30 8
execute if score @s gold_pack_count matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s gold_pack_count matches 4.. run give @s minecraft:gold_ore 10
execute if score @s gold_pack_count matches 4.. run give @s minecraft:coal 1

clear @s minecraft:knowledge_book
