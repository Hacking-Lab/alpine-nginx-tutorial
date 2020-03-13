#!/bin/bash

echo "What is the resource UUID? This is required! Please enter the UUID, followed by [ENTER]:"
read id


if [ -d ./deploy ]; then
    echo "deploy folder available - will delete the folder"
    rm -rf ./deploy
    sleep 2
else
    echo "deploy not available"
fi

mkdir ./deploy
cp -rf ./root/ ./deploy/
cp ./Dockerfile ./deploy
cp ./UUID.env ./deploy/$id.env
cp ./UUID.gn ./deploy/$id.gn
cat docker-compose.yml | sed "s/UUID/$id/g" | tee docker-compose-$id.yml 
cd ./deploy
tar -cvzf dockerfiles.tar.gz *
rm Dockerfile
rm -rf root
rm $id.env
rm $id.gn
cd ..
ls -al ./deploy 
