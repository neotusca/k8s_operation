TODAY=`date +%Y%m%d`
PWD=`pwd`

#echo $TODAY
#echo $PWD

mkdir config_$TODAY

sshpass  -p 1dlatluser   scp -P 31227 tempuser@61.41.8.179:/data1/tempuser/bindData/nis_160713.tar  $PWD/config_$TODAY
sshpass  -p 1dlatluser   scp -P 31227 tempuser@61.41.8.179:/data1/tempuser/pdns/powerdns.tar        $PWD/config_$TODAY
sshpass  -p 1dlatluser   scp -P 31227 tempuser@61.41.8.179:/data1/tempuser/pdns/rsyslog.conf        $PWD/config_$TODAY
sshpass  -p 1dlatluser   scp -P 31227 tempuser@61.41.8.179:/data1/tempuser/pdns/powerdnsconfig.tar  $PWD/config_$TODAY
