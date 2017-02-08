
docker run -d -p 80:80 \
           -v /data/HTTPD_DIR/CONF:/usr/local/apache2/conf \
           -v /data/HTTPD_DIR/DATA:/usr/local/apache2/htdocs \
           -v /data/HTTPD_DIR/LOG:/usr/local/apache2/logs \
           httpd:2.4.23-alpine-final

#docker run -d -p 80:80 \
#           -v /data/HTTPD_DIR/CONF:/usr/local/apache2/conf \
#           -v /data/HTTPD_DIR/DATA:/usr/local/apache2/htdocs \
#           -v /data/HTTPD_DIR/LOG:/usr/local/apache2/logs \
#           httpd:2.4.23


docker ps -a
