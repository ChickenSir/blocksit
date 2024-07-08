# Removes a seat near the player
execute if score @n[type=armor_stand,tag=seat,limit=1] blocksit_playerid = @s blocksit_playerid run kill @n[type=armor_stand,tag=seat]
scoreboard players set @s seated 0
tellraw @s {"text":"Seat removed!","color":"green"}