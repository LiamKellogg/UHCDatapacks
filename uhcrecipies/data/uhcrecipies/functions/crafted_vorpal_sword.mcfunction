recipe take @s uhcrecipies:vorpal_sword

advancement revoke @s only uhcrecipies:vorpal_sword_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1

# 3 Max crafts
execute if score @s vorpal_swd_ct matches ..2 run give @s minecraft:iron_sword{Enchantments:[{lvl: 2s, id:"minecraft:bane_of_arthropods"}, {lvl: 2s, id:"minecraft:smite"}, {lvl: 1s, id:"minecraft:looting"}]}
scoreboard players add @s vorpal_swd_ct 1
# L
execute if score @s vorpal_swd_ct matches 4.. run title @s times 3 30 8
execute if score @s vorpal_swd_ct matches 4.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s vorpal_swd_ct matches 4.. run give @s minecraft:bone
execute if score @s vorpal_swd_ct matches 4.. run give @s minecraft:iron_sword
execute if score @s vorpal_swd_ct matches 4.. run give @s minecraft:rotten_flesh
clear @s minecraft:knowledge_book
