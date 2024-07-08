tellraw @s {"text":"-=[Select a Block]=-","color":"yellow"}

tellraw @s {"text":"    Note: You cannot have more than one seat","color":"green"}
tellraw @s {"text":"    [Oak Log]","hoverEvent":{"action":"show_text","value":"Click to select!"},"clickEvent":{"action":"run_command","value":"/execute unless score @s seated matches 1 as @s run function blocksit:create_oak"}}
tellraw @s {"text":"    [Scaffolding]","hoverEvent":{"action":"show_text","value":"Click to select!"},"clickEvent":{"action":"run_command","value":"/execute unless score @s seated matches 1 as @s run function blocksit:create_scaffolding"}}
tellraw @s {"text":"    [Custom Block]","hoverEvent":{"action":"show_text","value":"Click to select! Block is based off 9th hotbar slot."},"clickEvent":{"action":"run_command","value":"/execute unless score @s seated matches 1 as @s run function blocksit:create_custom"}}

tellraw @s {"text":"-=[▒▒▒▒▒▒▒▒]=-","color":"yellow"}