execute as @a at @s as @n[type=sulfur_cube,name="invisible",tag=!effected,distance=..5] at @s if data entity @s equipment.body.id run function ct:sulfur_cube/invisible
execute as @a at @s as @n[type=sulfur_cube,name="big",tag=!effected,distance=..5] at @s run function ct:sulfur_cube/big
execute as @a at @s as @n[type=sulfur_cube,name="small",tag=!effected,distance=..5] at @s run function ct:sulfur_cube/small
execute as @a at @s as @n[type=sulfur_cube,name="balloon",tag=!effected,distance=..5] at @s if data entity @s leash run function ct:sulfur_cube/balloon

execute as @a at @s as @n[type=sulfur_cube,name="big balloon",tag=!effected,distance=..5] at @s if data entity @s leash run function ct:sulfur_cube/big_balloon
execute as @a at @s as @n[type=sulfur_cube,name="big invisible",tag=!effected,distance=..5] at @s if data entity @s equipment.body.id run function ct:sulfur_cube/big_invisible
execute as @a at @s as @n[type=sulfur_cube,name="small balloon",tag=!effected,distance=..5] at @s if data entity @s leash run function ct:sulfur_cube/small_balloon
execute as @a at @s as @n[type=sulfur_cube,name="small invisible",tag=!effected,distance=..5] at @s if data entity @s equipment.body.id run function ct:sulfur_cube/small_invisible

execute as @a at @s as @n[type=sulfur_cube,nbt={active_effects:[{id:"minecraft:levitation"}]},tag=effected] at @s unless data entity @s leash run function ct:reset_balloon
execute as @a at @s as @n[type=sulfur_cube,nbt={active_effects:[{id:"minecraft:invisibility"}]},tag=effected] at @s unless data entity @s equipment.body.id run function ct:reset_invisible
