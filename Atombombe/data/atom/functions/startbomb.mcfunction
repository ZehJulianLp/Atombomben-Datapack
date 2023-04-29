scoreboard players enable @a[tag=atom_feuer] atom_x
scoreboard players enable @a[tag=atom_feuer] atom_z
scoreboard players enable @a[tag=atom_feuer] atom_feuer
execute as @a[scores={atom_feuer=1..}] at @s run function atom:feuer

execute as @e[tag=feuer] at @s run tp @s ^ ^ ^1 facing entity @e[tag=target,sort=nearest,limit=1]
execute as @e[tag=feuer] at @s if entity @e[type=armor_stand,tag=target,distance=..2] run data modify entity @s NoGravity set value 0b
execute as @e[tag=feuer] at @s if entity @e[type=armor_stand,tag=target,distance=..2] run tag @s add explosion
execute as @e[tag=feuer] at @s if entity @e[type=armor_stand,tag=target,distance=..2] run scoreboard players add @s explosion_timer 1
execute as @e[tag=feuer] at @s if entity @e[type=armor_stand,tag=target,distance=..2] run kill @e[type=armor_stand,distance=..2,tag=target]

execute as @e[scores={explosion_timer=1..}] run scoreboard players add @s explosion_timer 1



execute as @e[tag=explosion] if score @s explosion_timer matches 200.. at @s if data entity @s {Motion:[0.0,0.0,0.0]} run function atom:explosion
execute as @e[tag=explosion] at @s unless block ~ ~-1 ~ air run function atom:explosion

execute as @e[tag=poison] at @s run effect give @e[distance=..500] wither 2 1 true