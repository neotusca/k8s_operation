
docker run -d -p 80:80 \
           --name elastic-HQ \
           -e HOST=192.168.0.143 \
           -e ES_HOST=192.168.0.143 \
           elasticsearch-hq:201801
           #-v /data/NGINX_DIR/CONF:/etc/nginx \
           #-v /data/NGINX_DIR/DATA:/usr/share/nginx/html \
           #-v /data/NGINX_DIR/LOG:/var/log/nginx \


sleep 2
docker ps -a



