set -e
vers=${LITWR_VERSION:-1.0.8}
mode=${LITWR_MODE:-hungry}
#Cheap upper case for Basic and Hungry
ucmode=`echo $mode | tr "bh" "BH"`
fn="LifeInTheWoodsRenaissanceServer${ucmode}.zip"
url="http://lifeinthewoods.ca/litwr/repository/server/$mode/$vers/$fn"
mkdir litwr_srv
cd litwr_srv
wget "$url"
unzip $fn
rm $fn

ln -sf /litwr_srv/mods /mc_srv/
ln -sf /litwr_srv/config /mc_srv/

