#!/bin/sh

UUID_FULL=`grep secrets /proc/1/mountinfo | awk -F'/' '{print $6}'`
UUID=${UUID_FULL:0:12}


#/opt/jboss/wildfly/standalone/configuration
#/opt/jboss/wildfly/standalone/deployments
#/opt/jboss/wildfly/standalone/log

mkdir -m 755 /opt/jboss/wildfly/standalone/configuration/$UUID 
mkdir /opt/jboss/wildfly/standalone/log/$UUID 


cd /opt/jboss/wildfly/standalone/configuration/$UUID
#echo "cp -pr ../.xml         ."  > wildfly-conf-change.sh

echo "cp -pr ../origin/standalone.xml      ."  > wildfly-conf-change.sh
echo "cp -pr ../origin/*.properties  ."       >> wildfly-conf-change.sh
echo "sed -i 's/BASE_DIR\/configuration/BASE_DIR\/configuration\/$UUID/'       /opt/jboss/wildfly/bin/standalone.sh" >> wildfly-conf-change.sh
echo "sed -i 's/BASE_DIR\/log/BASE_DIR\/log\/$UUID/'                           /opt/jboss/wildfly/bin/standalone.sh" >> wildfly-conf-change.sh
echo "sed -i '334i\         -Djboss.server.log.dir="\$JBOSS_LOG_DIR" \\\'        /opt/jboss/wildfly/bin/standalone.sh" >> wildfly-conf-change.sh
echo "sed -i '334i\         -Djboss.server.config.dir="\$JBOSS_CONFIG_DIR" \\\'  /opt/jboss/wildfly/bin/standalone.sh" >> wildfly-conf-change.sh
echo "sed -i 's/server.log/$UUID\/server.log/'                             logging.properties"                   >> wildfly-conf-change.sh



chmod +x wildfly-conf-change.sh
./wildfly-conf-change.sh


#cd /opt/jboss/wildfly/bin

exec /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0
