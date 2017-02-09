#!/bin/sh

UUID_FULL=`grep secrets /proc/1/mountinfo | awk -F'/' '{print $6}'`
UUID=${UUID_FULL:0:12}


echo "sed -i 's/\/data\/named\/log/\/data\/named\/"$UUID"/'  /etc/rsyslog.conf" > rsyslog-conf-change.sh
chmod +x rsyslog-conf-change.sh
./rsyslog-conf-change.sh

mkdir /data/named/$UUID


/usr/sbin/pdns_recursor --daemon=no --config-dir=/etc/powerdns
/sbin/rsyslogd -i /var/run/syslogd.pid -c 5
