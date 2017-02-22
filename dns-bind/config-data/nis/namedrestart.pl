#!/usr/bin/perl
#
# NAMED Restart program for Linux
#

system "/etc/rc.d/init.d/named restart > /dev/null";



# Snmp restart scripts

$pid=`ps -ef | grep snmpd | head -1`;
if($pid =~ /^root\s*(\S+)/) {
        $snmppid=$1;
#        print "$snmppid\n";
}
