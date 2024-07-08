# Creates an oak log seat
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["seat"],DisabledSlots:2096896}
item replace entity @n[type=minecraft:armor_stand,tag=seat] armor.head with minecraft:oak_log
tp @n[type=minecraft:armor_stand,tag=seat] ~ ~-1.5 ~ ~ ~
ride @s mount @n[type=minecraft:armor_stand,tag=seat,limit=1]

# Set player as seated, give armor stand player id
scoreboard players set @s seated 1
scoreboard players operation @n[type=armor_stand,tag=seat,limit=1] blocksit_playerid = @s blocksit_playerid

# Show player how to remove seat
tellraw @s {"text":"Click here to remove or by typing /trigger removeseat","color":"red","hoverEvent":{"action":"show_text","value":"Remove seat"},"clickEvent":{"action":"run_command","value":"/execute unless score @s seated matches 0 as @s run function blocksit:remove_seat"}}