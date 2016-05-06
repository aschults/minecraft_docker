set -e
IMAGE_TAG=litwr_srv
CONTAINER_NAME=mcsrv1
docker build -t $IMAGE_TAG . 
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
#EP="-ti --entrypoint=sh"
EP="-d"
docker run -e eula=true -e online_mode=false -v /var/tmp/mc_sg:/savegames --name=$CONTAINER_NAME  -p 25566:25566 -p 25565:25565 $EP $IMAGE_TAG 


