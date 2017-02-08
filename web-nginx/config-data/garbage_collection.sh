RUNNING_UUID=`lsof | grep '/log/nginx' | awk '{print $9}' | awk -F'/' '{print $5}' | sort -u | grep -v ^$`
CONF_LIST=`ls -1 CONF | awk -F'-' '{print $2}' | awk -F'.' '{print $1}' | grep -v ^$ | grep -v conf`
LOG_LIST=`ls -1 LOG`

echo 'list-running  : '$RUNNING_UUID
echo 'list-conffile : '$CONF_LIST
echo 'list-logfile  : '$LOG_LIST

echo $RUNNING_UUID > list-running
echo $CONF_LIST    > list-conffile
echo $LOG_LIST     > list-logfile

sed -i 's/ /\n/g'  list-running
sed -i 's/ /\n/g'  list-conffile
sed -i 's/ /\n/g'  list-logfile

grep -f list-running -v list-conffile > ToDel_conffile
grep -f list-running -v list-logfile  > ToDel_logfile

awk '{print "rm -fr CONF/nginx-"$1".conf"}' ToDel_conffile > ToDel_conffile.sh
awk '{print "rm -fr LOG/"$1}'               ToDel_logfile  > ToDel_logfile.sh
