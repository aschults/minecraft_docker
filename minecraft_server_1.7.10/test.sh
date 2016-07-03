set -e
basetag=aschults/minecraft_docker:server_base
docker build -t $basetag ../minecraft_server_base
IMAGE_TAG=minecraft_srv
CONTAINER_NAME=mcsrv1
docker build -t $IMAGE_TAG . 
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
#EP=--entrypoint=sh
docker run -e eula=true -e online_mode=false -v /var/tmp/mc_sg:/savegames --name=$CONTAINER_NAME -d -p 25566:25566 -p 25565:25565 $EP $IMAGE_TAG 


