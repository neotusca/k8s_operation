



#ssh c72-k8s-node1 'mkdir -p /data/TOMCAT_DIR/CONF/origin'
#scp -pr tomcat-conf/*    c72-k8s-node1:/data/TOMCAT_DIR/CONF/origin
#scp -pr ROOT.war         c72-k8s-node1:/data/TOMCAT_DIR/DATA/
#scp -pr garbage_collection.sh c72-k8s-node1:/data/TOMCAT_DIR

#ssh c72-k8s-node2 'mkdir -p /data/TOMCAT_DIR/CONF/origin'
#scp -pr tomcat-conf/*    c72-k8s-node2:/data/TOMCAT_DIR/CONF/origin
#scp -pr ROOT.war         c72-k8s-node2:/data/TOMCAT_DIR/DATA/
#scp -pr garbage_collection.sh c72-k8s-node2:/data/TOMCAT_DIR

#ssh c72-k8s-node3 'mkdir -p /data/TOMCAT_DIR/CONF/origin'
#scp -pr tomcat-conf/*    c72-k8s-node3:/data/TOMCAT_DIR/CONF/origin
#scp -pr ROOT.war         c72-k8s-node3:/data/TOMCAT_DIR/DATA/
#scp -pr garbage_collection.sh c72-k8s-node3:/data/TOMCAT_DIR

#ssh c72-k8s-node4 'mkdir -p /data/TOMCAT_DIR/CONF/origin'
#scp -pr tomcat-conf/*    c72-k8s-node4:/data/TOMCAT_DIR/CONF/origin
#scp -pr ROOT.war         c72-k8s-node4:/data/TOMCAT_DIR/DATA/
#scp -pr garbage_collection.sh c72-k8s-node4:/data/TOMCAT_DIR

