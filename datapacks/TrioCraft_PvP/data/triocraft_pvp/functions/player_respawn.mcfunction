# Sincronizar muerte procesada
scoreboard players operation @s tcpvp_deaths_handled = @s tcpvp_deaths

# Reasignar equipo para mantener distribución equilibrada
function triocraft_pvp:assign_team_balanced

# Si venía de caída al vacío, limpiar inventario antes del kit
execute if score @s tcpvp_void_flag matches 1 run clear @s
scoreboard players set @s tcpvp_void_flag 0

# Dar kit de respawn
function triocraft_pvp:give_respawn_kit
