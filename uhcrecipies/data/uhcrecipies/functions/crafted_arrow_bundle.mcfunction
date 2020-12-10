recipe take @s uhcrecipies:arrow_bundle

advancement revoke @s only uhcrecipies:arrow_bundle_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1

# 3 Max crafts
execute if score @s arrow_bundle_ct matches ..2 run give @s minecraft:arrow 20
scoreboard players add @s arrow_bundle_ct 1
# L
execute if score @s arrow_bundle_ct matches 4.. run title @s times 3 30 8
execute if score @s arrow_bundle_ct matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s arrow_bundle_ct matches 4.. run give @s minecraft:flint 3
execute if score @s arrow_bundle_ct matches 4.. run give @s minecraft:stick 3
execute if score @s arrow_bundle_ct matches 4.. run give @s minecraft:feather 3

clear @s minecraft:knowledge_book
