
docker ps -a | grep 'Exited\|Created' | awk '{print "docker rm "$1}'

docker run -d -p 8888:8080 \
           -v /data/TOMCAT_DIR/CONF:/usr/local/tomcat/conf \
           -v /data/TOMCAT_DIR/DATA:/usr/local/tomcat/webapps \
           -v /data/TOMCAT_DIR/LOG:/usr/local/tomcat/logs \
           tomcat:8.5-alpine-final
           #tomcat:8.0-alpine-final


sleep 2
docker ps -a
