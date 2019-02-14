#!/bin/bash

cp ~/docker/nginx-rtmp/nginx.conf hostfiles
sudo docker run \
	-i -t \
	--name nginx-rtmp \
	-v /home/kevin/apps/nginx-rtmp:/hostfiles \
	--entrypoint=/bin/bash \
	-p 8080:80 \
	-p 1935:1935 \
	--rm pmw1/nginx-rtmp

