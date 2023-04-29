execute as @e[tag=atom_start,tag=!spawned] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["atom_middle1","atom"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute as @e[tag=atom_start,tag=!spawned] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["atom_middle2","atom"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute as @e[tag=atom_start,tag=!spawned] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["atom_end","atom"],ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}]}
execute as @e[tag=atom_start,tag=!spawned] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=atom_start,tag=!spawned] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=atom_start,tag=!spawned] run tag @s add spawned

execute as @e[tag=atom_start] at @s run tp @e[tag=atom_middle1,distance=..10] ^ ^ ^-0.1 facing entity @s
execute as @e[tag=atom_start] at @s run tp @e[tag=atom_middle2,distance=..10] ^ ^ ^-0.7 facing entity @s
execute as @e[tag=atom_start] at @s run tp @e[tag=atom_end,distance=..10] ^ ^ ^-1.3 facing entity @s
execute as @e[tag=atom_start] at @s run particle lava ^ ^1 ^-1.5 0 0 0 0 1 normal

#bei Bedarf entfernen
execute as @e[tag=atom_start] at @s run forceload add ~-16 ~-16 ~16 ~16