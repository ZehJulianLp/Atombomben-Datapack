#load function
tellraw @a ["",{"text":"Reloaded ","color":"aqua"},{"text":"Atombomben-Datapack","bold":true,"color":"dark_red"},{"text":" by ","color":"aqua"},{"text":"ZehJulian_lp","bold":true,"color":"green","clickEvent":{"action":"open_url","value":"https://zehjulianlp.github.io/"}}]
scoreboard objectives add atom_x trigger
scoreboard objectives add atom_z trigger
scoreboard objectives add atom_feuer trigger
scoreboard objectives add explosion_timer dummy