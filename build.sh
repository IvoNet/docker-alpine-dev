#!/usr/bin/env bash
docker_name=ivonet
image=alpine-dev
version=$(cat VERSION)

deploy="false"
#deploy="true"
versioning=false
#versioning=true

#OPTIONS="$OPTIONS --no-cache"
#OPTIONS="$OPTIONS --force-rm"
#OPTIONS="$OPTIONS --build-arg APP=alpine-dev"

docker build ${OPTIONS} -t $docker_name/${image}:latest .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push $docker_name/${image}:latest
else
    exit 1
fi

if [ "$versioning" == "true" ]; then
    docker tag $docker_name/${image}:latest $docker_name/${image}:${version}
    if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
        docker push $docker_name/${image}:${version}
    fi
fi
