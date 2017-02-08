
docker run -d -p 80:80 \
           -v /data/NGINX_DIR/CONF:/etc/nginx \
           -v /data/NGINX_DIR/DATA:/usr/share/nginx/html \
           -v /data/NGINX_DIR/LOG:/var/log/nginx \
           nginx:1.11-alpine-final


sleep 2
docker ps -a



