set -e
vers=${LITWR_VERSION:-1.0.8}
mode=${LITWR_MODE:-hungry}
#Cheap upper case for Basic and Hungry
ucmode=`echo $mode | tr "bh" "BH"`
fn="LifeInTheWoodsRenaissanceServer${ucmode}.zip"
url="http://lifeinthewoods.ca/litwr/repository/server/$mode/$vers/$fn"
mkdir -p /mc_mods.d/litwr_srv
cd /mc_mods.d/litwr_srv
wget "$url"
unzip $fn
rm $fn


