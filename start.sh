cp ~/docker/nginx-rtmp/nginx.conf hostfiles
sudo docker run -v ~/docker/nginx-rtmp/hostfiles:/hostfiles -p 8080:80 -p 1935:1935 -i -t --name nginx-rtmp --rm nginx_rtmp
