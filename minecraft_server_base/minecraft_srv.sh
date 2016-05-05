set -e
cd /mc_srv
sh /srv_gen_properties.sh >server.properties
cat <<EOF >eula.txt
#By changing the setting below to TRUE you are indicating your agreement to our 
EULA (https://account.mojang.com/documents/minecraft_eula).
#Wed May 04 18:29:47 GMT 2016
eula=${eula:-false}
EOF

if ! [ -d "/savegames/${level_name:-world}" ] ; then
  mkdir "/savegames/${level_name:-world}"
fi

ln -sf "/savegames/${level_name:-world}" /mc_srv/
java $JAVA_OPTS -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui
