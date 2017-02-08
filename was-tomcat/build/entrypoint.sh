#!/bin/sh

UUID_FULL=`grep secrets /proc/1/mountinfo | awk -F'/' '{print $6}'`
UUID=${UUID_FULL:0:12}


#/usr/local/tomcat/conf 
#/usr/local/tomcat/webapps 
#/usr/local/tomcat/logs 

mkdir -m 755 /usr/local/tomcat/conf/$UUID 
mkdir /usr/local/tomcat/logs/$UUID 

cd /usr/local/tomcat/conf/$UUID
echo "cp -pr ../origin/*.xml         ."  > tomcat-conf-change.sh
echo "cp -pr ../origin/*.xsd         ." >> tomcat-conf-change.sh
echo "cp -pr ../origin/*.properties  ." >> tomcat-conf-change.sh
echo "cp -pr ../origin/*.policy      ." >> tomcat-conf-change.sh
echo "echo 'CATALINA_BASE=/usr/local/tomcat/$UUID'  >                               /usr/local/tomcat/bin/setenv.sh" >> tomcat-conf-change.sh

#echo "sed -i 's/logs/\/usr\/local\/tomcat\/logs\/$UUID/'               /usr/local/tomcat/conf/$UUID/conf/server.xml" >> tomcat-conf-change.sh
#echo "sed -i 's/\/conf\/logging.properties/\/conf\/"$UUID"\/logging.properties/'  /usr/local/tomcat/bin/catalina.sh" >> tomcat-conf-change.sh
#echo "sed -i 's/\/logs/\/logs\/"$UUID"/'                       /usr/local/tomcat/conf/$UUID/conf/logging.properties" >> tomcat-conf-change.sh
#echo "sed -i 's/localhost_access_log/"$UUID"_localhost_access_log/'    /usr/local/tomcat/conf/$UUID/conf/server.xml" >> tomcat-conf-change.sh


chmod +x tomcat-conf-change.sh
./tomcat-conf-change.sh

# link in /usr/local/tomcat/$UUID
mkdir /usr/local/tomcat/$UUID
mkdir /usr/local/tomcat/$UUID/temp

ln -s /usr/local/tomcat/conf/$UUID    /usr/local/tomcat/$UUID/conf
ln -s /usr/local/tomcat/webapps       /usr/local/tomcat/$UUID/webapps
ln -s /usr/local/tomcat/logs/$UUID    /usr/local/tomcat/$UUID/logs


cd /usr/local/tomcat/bin

exec catalina.sh run
