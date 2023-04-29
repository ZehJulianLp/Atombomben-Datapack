execute if score @s atom_feuer matches 1 run summon armor_stand ~ 325 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["target","atom"],NoGravity:1b}
execute if score @s atom_feuer matches 1 store result entity @e[tag=target,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players get @s atom_x
execute if score @s atom_feuer matches 1 store result entity @e[tag=target,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players get @s atom_z
execute if score @s atom_feuer matches 1 run scoreboard players set @s atom_feuer 2
tag @e[tag=atom_start,limit=1,sort=nearest] add feuer
execute if score @s atom_feuer matches 2 run scoreboard players set @s atom_feuer 3




scoreboard players reset @s atom_feuer