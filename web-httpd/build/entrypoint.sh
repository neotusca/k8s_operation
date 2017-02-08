#!/bin/sh

UUID_FULL=`grep secrets /proc/1/mountinfo | awk -F'/' '{print $6}'`
UUID=${UUID_FULL:0:12}



#mkdir /usr/local/apache2/conf/$UUID
#mkdir /usr/local/apache2/logs/$UUID

cd /usr/local/apache2
echo "sed -e 's/\/proc\/self\/fd\/1/\/usr\/local\/apache2\/logs\/"$UUID"\/access.log/'  /usr/local/apache2/conf/httpd.conf > /usr/local/apache2/conf/httpd-"$UUID".conf" > httpd-conf-change.sh
echo "sed -i 's/\/proc\/self\/fd\/2/\/usr\/local\/apache2\/logs\/"$UUID"\/error.log/'   /usr/local/apache2/conf/httpd-"$UUID".conf"  >> httpd-conf-change.sh
#echo "sed -e 's/\/proc\/self\/fd\/2/\/usr\/local\/apache2\/logs\/"$UUID"\/error.log/'   /usr/local/apache2/conf/httpd.conf > /usr/local/apache2/conf/httpd-"$UUID".conf" >> httpd-conf-change.sh


echo "echo 'PidFile "logs/$UUID/httpd.pid"'  >> /usr/local/apache2/conf/httpd-$UUID.conf"  >> httpd-conf-change.sh

#echo "PidFile logs/$UUID/httpd.pid"  >> /usr/local/apache2/conf/httpd-"$UUID".conf




chmod +x httpd-conf-change.sh
./httpd-conf-change.sh

mkdir /usr/local/apache2/logs/$UUID
#chown -R named:named /data/named/$UUID 


exec httpd -f /usr/local/apache2/conf/httpd-$UUID.conf -DFOREGROUND
