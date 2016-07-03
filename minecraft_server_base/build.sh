FORGE_FULL_VERSION=${minecraft_version}-${forge_version}-${minecraft_version}
wget http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGE_FULL_VERSION/forge-$FORGE_FULL_VERSION-installer.jar

mkdir /mc_srv
cd /mc_srv
java -jar /forge-$FORGE_FULL_VERSION-installer.jar  --installServer
rm /forge-$FORGE_FULL_VERSION-installer.jar
cat >/mc_vars.sh <<EOF
export FORGE_FULL_VERSION=$FORGE_FULL_VERSION
EOF
