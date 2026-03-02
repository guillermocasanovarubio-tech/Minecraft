team leave @s

# Slot rotativo 0..15 para balancear jugadores entre equipos
scoreboard players operation @s tcpvp_team_slot = $next tcpvp_next_team
scoreboard players add $next tcpvp_next_team 1
execute if score $next tcpvp_next_team matches 16.. run scoreboard players set $next tcpvp_next_team 0

execute if score @s tcpvp_team_slot matches 0 run team join white @s
execute if score @s tcpvp_team_slot matches 1 run team join orange @s
execute if score @s tcpvp_team_slot matches 2 run team join magenta @s
execute if score @s tcpvp_team_slot matches 3 run team join light_blue @s
execute if score @s tcpvp_team_slot matches 4 run team join yellow @s
execute if score @s tcpvp_team_slot matches 5 run team join lime @s
execute if score @s tcpvp_team_slot matches 6 run team join pink @s
execute if score @s tcpvp_team_slot matches 7 run team join gray @s
execute if score @s tcpvp_team_slot matches 8 run team join light_gray @s
execute if score @s tcpvp_team_slot matches 9 run team join cyan @s
execute if score @s tcpvp_team_slot matches 10 run team join purple @s
execute if score @s tcpvp_team_slot matches 11 run team join blue @s
execute if score @s tcpvp_team_slot matches 12 run team join brown @s
execute if score @s tcpvp_team_slot matches 13 run team join green @s
execute if score @s tcpvp_team_slot matches 14 run team join red @s
execute if score @s tcpvp_team_slot matches 15 run team join black @s
