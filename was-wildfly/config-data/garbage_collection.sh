RUNNING_UUID=`lsof |grep wildfly/standalone/config | awk '{print $10}'| sort -u | awk -F'/' '{print $7}' | grep -v ^$`

CONF_LIST=`ls -1 CONF | grep -v origin`
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

awk '{print "rm -fr CONF/"$1}'   ToDel_conffile > ToDel_conffile.sh
awk '{print "rm -fr LOG/"$1}'    ToDel_logfile  > ToDel_logfile.sh
