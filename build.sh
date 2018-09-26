#!/usr/bin/env bash

image_name=test

export DOCKER_HOST=localhost:2375

gradle clean build

docker build -t=${image_name} .
docker images
docker ps -a

echo "删除掉不运行的容器"
docker rm $(docker ps -a -q)
echo "删除多余镜像"
docker rmi $(docker images -f "dangling=true" -q)

docker run -d -p 9900:9900 -v e:/log:/logs --name=${image_name} ${image_name}

echo "准备检查启动"
sleep 5

if [ 1 = `docker ps -f=name=test -f=status=running -q | wc -l` ]; then
    echo "启动成功"
else
    echo "启动失败"
fi