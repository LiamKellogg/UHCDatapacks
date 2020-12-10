recipe take @s uhcrecipies:power_book

advancement revoke @s only uhcrecipies:power_book_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}}
# 3 Max crafts
execute if score @s power_book_ct matches ..2 run give @s minecraft:enchanted_book{StoredEnchantments: [{lvl: 1s, id: "minecraft:power"}]}
scoreboard players add @s power_book_ct 1
# L
execute if score @s power_book_ct matches 4.. run title @s times 3 30 8
execute if score @s power_book_ct matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s power_book_ct matches 4.. run give @s minecraft:paper 3
execute if score @s power_book_ct matches 4.. run give @s minecraft:flint
execute if score @s power_book_ct matches 4.. run give @s minecraft:bone
clear @s minecraft:knowledge_book
