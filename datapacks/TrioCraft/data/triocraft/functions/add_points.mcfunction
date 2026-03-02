scoreboard players add @s trio_points 5
tellraw @s {"text":"[TrioCraft] +5 puntos por golpear un mob.","color":"green"}
advancement revoke @s only triocraft:hit_mob
