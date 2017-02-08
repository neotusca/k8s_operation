



#scp -pr tomcat-conf/* c72-k8s-node1:/data/TOMCAT_DIR/CONF/
#scp -pr tomcat-webapps/* c72-k8s-node1:/data/TOMCAT_DIR/DATA/
#scp ROOT.war          c72-k8s-node1:/data/TOMCAT_DIR/DATA/

#scp -pr tomcat-conf/* c72-k8s-node2:/data/TOMCAT_DIR/CONF/
#scp -pr tomcat-webapps/* c72-k8s-node2:/data/TOMCAT_DIR/DATA/
#scp ROOT.war          c72-k8s-node2:/data/TOMCAT_DIR/DATA/

#scp -pr tomcat-conf/* c72-k8s-node3:/data/TOMCAT_DIR/CONF/
#scp -pr tomcat-webapps/* c72-k8s-node3:/data/TOMCAT_DIR/DATA/
#scp ROOT.war          c72-k8s-node3:/data/TOMCAT_DIR/DATA/

#scp -pr tomcat-conf/* c72-k8s-node4:/data/TOMCAT_DIR/CONF/
#scp -pr tomcat-webapps/* c72-k8s-node4:/data/TOMCAT_DIR/DATA/
#scp ROOT.war          c72-k8s-node4:/data/TOMCAT_DIR/DATA/

