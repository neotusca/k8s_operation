

# mkdir /data/WILDFLY_DIR
# cd /data/WILDFLY_DIR
# mkdir CONF DATA LOG
# chown -R  1000:1000 *
#ssh c72-k8s-node3 'mkdir /data/WILDFLY_DIR; cd /data/WILDFLY_DIR; mkdir CONF DATA LOG ; chown -R  1000:1000 *'


#cp -pr wildfly/standalone/configuration/*  /data/WILDFLY_DIR/CONF
#cp -pr wildfly/standalone/deployments/*    /data/WILDFLY_DIR/DATA
#cp -pr wildfly/standalone/log/*            /data/WILDFLY_DIR/LOG


#scp -pr wildfly-standalone-config     c72-k8s-node1:/data/WILDFLY_DIR/CONF/origin
#scp ROOT.war                          c72-k8s-node1:/data/WILDFLY_DIR/DATA
#scp garbage_collection.sh             c72-k8s-node1:/data/WILDFLY_DIR

#scp -pr wildfly-standalone-config     c72-k8s-node2:/data/WILDFLY_DIR/CONF/origin
#scp ROOT.war                          c72-k8s-node2:/data/WILDFLY_DIR/DATA
#scp garbage_collection.sh             c72-k8s-node2:/data/WILDFLY_DIR

#scp -pr wildfly-standalone-config     c72-k8s-node3:/data/WILDFLY_DIR/CONF/origin
#scp ROOT.war                          c72-k8s-node3:/data/WILDFLY_DIR/DATA
#scp garbage_collection.sh             c72-k8s-node3:/data/WILDFLY_DIR

#scp -pr wildfly-standalone-config     c72-k8s-node4:/data/WILDFLY_DIR/CONF/origin
#scp ROOT.war                          c72-k8s-node4:/data/WILDFLY_DIR/DATA
#scp garbage_collection.sh             c72-k8s-node4:/data/WILDFLY_DIR
