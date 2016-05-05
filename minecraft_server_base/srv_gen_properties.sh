cat <<EOF
generator-settings=${generator_settings:-}
op-permission-level=${op_permission_level:-4}
allow-nether=${allow_nether:-true}
level-name=${level_name:-world}
enable-query=${enable_query:-false}
allow-flight=${allow_flight:-false}
announce-player-achievements=${announce_player_achievements:-true}
server-port=25565
level-type=${level_type:-DEFAULT}
enable-rcon=true
rcon.port=25566
rcon.password=${rcon_password:-changeme}
level-seed=${level_seed:-}
force-gamemode=${force_gamemode:-false}
server-ip=${server_ip:-}
max-build-height=${max_build_height:-256}
spawn-npcs=${spawn_npcs:-true}
white-list=${white_list:-false}
spawn-animals=${spawn_animals:-true}
hardcore=${hardcore:-false}
snooper-enabled=${snooper_enabled:-true}
online-mode=${online_mode:-true}
resource-pack=${resource_pack:-}
pvp=${pvp:-true}
difficulty=${difficulty:-1}
enable-command-block=${enable_command_block:-false}
gamemode=${gamemode:-0}
yer-idle-timeout=${yer_idle_timeout:-0}
max-players=${max_players:-20}
spawn-monsters=${spawn_monsters:-true}
generate-structures=${generate_structures:-true}
view-distance=${view_distance:-10}
motd=${motd:-A Minecraft Server}
EOF
