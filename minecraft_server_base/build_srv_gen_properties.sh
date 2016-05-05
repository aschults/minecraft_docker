# incomplete. Some settings are overwritten manually
echo "cat <<EOF"
perl -pe 'm/^([^=]+)=(.*)$/ && do {$k=$1;$v=$2 ; $k2=$k; $k2=~s/-/_/g; $_="$k=\${$k2:-$v}\n";};' <server.properties >>srv_gen_properties.sh
echo "EOF"
