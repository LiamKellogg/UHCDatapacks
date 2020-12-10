recipe take @s uhcrecipies:string

advancement revoke @s uhcrecipies:string_adv

# give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Replace This With Your Item"}'}} 1
# 3 Max crafts
execute if score @s strings_ct matches ..3 run give @s minecraft:string 4
scoreboard players add @s strings_ct 1
# L
execute if score @s strings_ct matches 5.. run title @s times 3 30 8
execute if score @s strings_ct matches 5.. run title @s title "You cannot craft more, L"
# Return original items
execute if score @s strings_ct matches 5.. run give @s minecraft:wool 4

clear @s minecraft:knowledge_book
