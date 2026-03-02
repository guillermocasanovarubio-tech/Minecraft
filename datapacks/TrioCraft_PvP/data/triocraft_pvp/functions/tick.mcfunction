# Guardar altura Y de jugadores vivos para detectar posible muerte por vacío
execute as @a store result score @s tcpvp_last_y run data get entity @s Pos[1] 1

# Marcar posible muerte por vacío cuando el jugador cae por debajo de Y=-60
execute as @a if score @s tcpvp_last_y <= $void_limit tcpvp_constants run scoreboard players set @s tcpvp_void_flag 1

# Primer ingreso: asignar equipo automáticamente
execute as @a[scores={tcpvp_joined=0}] run function triocraft_pvp:player_first_join

# Respawn: cuando deathCount sube, procesar kit y equipo
execute as @a if score @s tcpvp_deaths > @s tcpvp_deaths_handled run function triocraft_pvp:player_respawn
