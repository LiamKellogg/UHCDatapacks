recipe take @s uhcrecipies:light_anvil

advancement revoke @s only uhcrecipies:light_anvil_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1
# 3 Max crafts
execute if score @s light_anvil_ct matches ..2 run give @s minecraft:anvil
scoreboard players add @s light_anvil_ct 1
# L
execute if score @s light_anvil_ct matches 4.. run title @s times 3 30 8
execute if score @s light_anvil_ct matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s light_anvil_ct matches 4.. run give @s minecraft:iron_ingot 6
execute if score @s light_anvil_ct matches 4.. run give @s minecraft:iron_block 1

clear @s minecraft:knowledge_book
