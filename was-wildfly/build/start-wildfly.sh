
docker ps -a | grep 'Exited\|Created' | awk '{print "docker rm "$1}'


docker run -d -p 8888:8080 \
           -v /data/WILDFLY_DIR/CONF:/opt/jboss/wildfly/standalone/configuration \
           -v /data/WILDFLY_DIR/DATA:/opt/jboss/wildfly/standalone/deployments \
           -v /data/WILDFLY_DIR/LOG:/opt/jboss/wildfly/standalone/log \
           jboss/wildfly:8.2.1.Final-uc




#docker run -d -p 8888:8080 \
#           --name wildfly-xxx \
#           jboss/wildfly:8.2.1.Final



sleep 2
docker ps -a
