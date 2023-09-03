#!/bin/bash

container=restreamer-legacy
image=restreamer-cc
http_port=1987
rtmp_port=1935
password="$token"

docker stop $container
docker rm $container

docker run \
	-d \
	--name $container \
	-e "RS_USERNAME=admin" \
	-e "RS_PASSWORD=$password" \
	-e "RS_INPUTSTREAM=rtmp://localhost/live/external.stream?token=$token" \
	-e "RS_TIMEZONE=America/Chicago" \
	-e "RS_DEBUG=false" \
	-e "RS_LOGLEVEL=4" \
	-p $http_port:8080 \
	-p $rtmp_port:1935 \
	--restart unless-stopped \
	$image

