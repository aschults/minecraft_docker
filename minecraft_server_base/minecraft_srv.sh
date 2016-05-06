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

if [ -d /mc_srv/mods ] ; then
  rm -rf /mc_srv/mods 
fi
if [ -d /mc_srv/config ] ; then
  rm -rf /mc_srv/config 
fi

mkdir -p /mc_srv/mods
mkdir -p /mc_srv/config

# either /mc_mods.d/file.jar
# or /mc_mods.d/dir/{mods/,config/}
ls -1 /mc_mods.d | while read f ; do
  fn=/mc_mods.d/$f
  if [ -f $fn ] && ! [ ${fn%.jar} = ${fn} ] ; then
     ln -s $fn /mc_srv/mods/$fn
     continue
  fi

  dir=$PWD
  cd $fn
  find . ! -name "."  -type d -exec mkdir "/mc_srv/{}" \;
  find . -type f -exec ln -s "$fn/{}" "/mc_srv/{}" \;
  cd $dir
done


ln -sf "/savegames/${level_name:-world}" /mc_srv/
java $JAVA_OPTS -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui
