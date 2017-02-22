#!/usr/bin/perl

#
# reject.conf and forward_black.conf download 
#


$path="/data/nis";
$forwardpath="/data/nis";
$old_forwardpath="/data/nis/old_forward";


@now = localtime(time());
$date = sprintf("%04d%02d%02d%02d%02d", $now[5]+1900, $now[4]+1, $now[3], $now[2], $now[1]);


system `mv $forwardpath/forward_black.conf $old_forwardpath/forward_black.conf_$date`;

chdir $path;
system `/usr/local/bin/wget --http-user=admin --http-passwd=ehfkwlQorehfkwl http://sinkweb.bora.net/apply/forward/forward_black.conf >> /tmp/log 2>&1`;

sleep(2);


if ( -f "$forwardpath/forward_black.conf" ) {
} else {
        system `cp $old_forwardpath/forward_black.conf_$date $forwardpath/forward_black.conf >> /tmp/log 2>&1 `;
}

system `/usr/sbin/rndc reload > /tmp/reloadlog 2>&1 `;
