RUNNING_UUID=`docker ps -a |grep pdns | grep -v POD | grep Up | awk '{print $1}'`
LOG_LIST=`ls -1 LOG`

echo 'list-running  : '$RUNNING_UUID
echo 'list-logfile  : '$LOG_LIST

echo $RUNNING_UUID > list-running
echo $LOG_LIST     > list-logfile

sed -i 's/ /\n/g'  list-running
sed -i 's/ /\n/g'  list-logfile

grep -f list-running -v list-logfile  > ToDel_logfile

awk '{print "rm -fr LOG/"$1}'               ToDel_logfile  > ToDel_logfile.sh
