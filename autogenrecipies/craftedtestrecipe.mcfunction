recipe take @s testnamespace:testrecipe
advancement revoke @s only testnamespace:testrecipe_adv

execute if score @s testrecipe_ct matches ..1 run give @s apple 2
scoreboard players add @s testrecipe_ct 1

execute if score @s testrecipe_ct matches 3.. run title @s times 3 30 8
execute if score @s testrecipe_ct matches 3.. run title @s title "You cannot craft more, L"

clear @s minecraft:knowledge_book


# loop the ingredient items
execute if score @s testrecipe_ct matches 3.. run give @s minecraft:stone 3
execute if score @s testrecipe_ct matches 3.. run give @s minecraft:tnt 1
execute if score @s testrecipe_ct matches 3.. run give @s minecraft:blaze_powder 2
