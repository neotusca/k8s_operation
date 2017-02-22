
docker ps -a | grep 'Exited\|Created' | awk '{print "docker rm "$1}'

docker run -d -p 53:53/udp -p 53:53/tcp -p 953:953/tcp \
           -v /data/BIND_DIR/CONF:/etc/named \
           -v /data/BIND_DIR/DATA:/data/nis \
           -v /data/BIND_DIR/LOG:/data/named \
           bind:9.10.4-P5-final.2
           #bind:9.10.4-P4-final


sleep 2
docker ps -a
