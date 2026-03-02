# === Objectives ===
scoreboard objectives add tcpvp_joined dummy
scoreboard objectives add tcpvp_deaths deathCount
scoreboard objectives add tcpvp_deaths_handled dummy
scoreboard objectives add tcpvp_next_team dummy
scoreboard objectives add tcpvp_team_slot dummy
scoreboard objectives add tcpvp_last_y dummy
scoreboard objectives add tcpvp_void_flag dummy
scoreboard objectives add tcpvp_constants dummy

# === Constants ===
scoreboard players set $next tcpvp_next_team 0
scoreboard players set $void_limit tcpvp_constants -60

# === Teams ===
team add white "White"
team add orange "Orange"
team add magenta "Magenta"
team add light_blue "Light Blue"
team add yellow "Yellow"
team add lime "Lime"
team add pink "Pink"
team add gray "Gray"
team add light_gray "Light Gray"
team add cyan "Cyan"
team add purple "Purple"
team add blue "Blue"
team add brown "Brown"
team add green "Green"
team add red "Red"
team add black "Black"

team modify white color white
team modify orange color gold
team modify magenta color light_purple
team modify light_blue color aqua
team modify yellow color yellow
team modify lime color green
team modify pink color light_purple
team modify gray color dark_gray
team modify light_gray color gray
team modify cyan color dark_aqua
team modify purple color dark_purple
team modify blue color blue
team modify brown color gold
team modify green color dark_green
team modify red color red
team modify black color black

tellraw @a {"text":"[TrioCraft_PvP] Datapack cargado.","color":"green"}
