
#docker run -d --name tomcat-xxx tomcat:8.5
docker exec  tomcat-xxx 'tar cvf tomcat-conf.tar .'
docker cp tomcat-xxx:tomcat-conf.tar .
