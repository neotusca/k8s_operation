

docker exec drunk_dubinsky  'tar cvf nginx-conf.tar /etc/nginx'
docker exec drunk_dubinsky  'tar cvf nginx-html.tar /usr/share/nginx/html'
docker cp drunk_dubinsky:/nginx-conf.tar  .
docker cp drunk_dubinsky:/nginx-html.tar  .


