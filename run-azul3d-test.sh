#!/bin/bash 

set -o nounset                              # Treat unset variables as an error

image="footest-img:latest"
container="footest-container"

result=$(docker images -q ${image})

if [[ -z "$result" ]]; then
   echo "building image...•••••••••••••••••"
   docker build -t ${image} . 
   echo "...image built"
fi

# does a stopped container exist
exited=$(docker ps -a --no-trunc --filter name=${container} --filter status=exited -q)

if [[ ! -z "$exited" ]]; then
    echo "exited container exists"
    docker rm $exited
    echo "removed container"
fi

# is a container currently running
result=$(docker ps -a --no-trunc --filter name=${container} -q)


if [[ -z "$result" ]]; then
   echo "starting up container..."
   docker create -it --name ${container} \
      -v $(pwd):/repo:delegated \
      ${image} && \
      docker start ${container}
   echo "...container built"
fi

docker exec -it ${container} /bin/sh

