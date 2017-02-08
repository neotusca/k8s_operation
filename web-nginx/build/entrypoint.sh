#!/bin/sh

UUID_FULL=`grep secrets /proc/1/mountinfo | awk -F'/' '{print $6}'`
UUID=${UUID_FULL:0:12}




cd /etc/nginx
echo "sed -e 's/\/var\/log\/nginx\/access.log/\/var\/log\/nginx\/"$UUID"\/access.log/' /etc/nginx/nginx.conf > /etc/nginx/nginx-"$UUID".conf" >  nginx-conf-change.sh
echo "sed -i 's/\/var\/log\/nginx\/error.log/\/var\/log\/nginx\/"$UUID"\/error.log/'   /etc/nginx/nginx-"$UUID".conf" >> nginx-conf-change.sh
#echo "sed -e 's/\/proc\/self\/fd\/1/\/usr\/local\/apache2\/logs\/"$UUID"\/access.log/'  /usr/local/apache2/conf/httpd.conf > /usr/local/apache2/conf/httpd-"$UUID".conf" > httpd-conf-change.sh
#echo "sed -i 's/\/proc\/self\/fd\/2/\/usr\/local\/apache2\/logs\/"$UUID"\/error.log/'   /usr/local/apache2/conf/httpd-"$UUID".conf"  >> httpd-conf-change.sh



chmod +x nginx-conf-change.sh
./nginx-conf-change.sh

mkdir /var/log/nginx/$UUID


#CMD ["nginx","-c","/etc/nginx/nginx-$UUID.conf","-g","daemon off;"]
#nginx -c /etc/nginx/nginx-$UUID.conf  -g daemon off
nginx -c /etc/nginx/nginx-$UUID.conf  -g 'daemon off;'
