# Give new players a ID upon joining
execute as @a[tag=!id_given] store result score @s blocksit_playerid run scoreboard players add #global blocksit_playerid 1
execute as @a[tag=!id_given] run tag @s add id_given

# Enable custom sit command
scoreboard players enable @a sit
execute if score @a[limit=1] seated matches 1 as @a[scores={sit=1..}] run tellraw @s {"text":"You already have a seat","color":"red"}
execute unless score @a[limit=1] seated matches 1 as @a[scores={sit=1..}] run function blocksit:show_ui
scoreboard players set @a sit 0

# Enable remove seat command
scoreboard players enable @a removeseat
execute if score @a[limit=1] seated matches 0 as @a[scores={removeseat=1..}] run tellraw @s {"text":"No seat exists","color":"red"}
execute unless score @a[limit=1] seated matches 0 as @a[scores={removeseat=1..}] run function blocksit:remove_seat
scoreboard players set @a removeseat 0