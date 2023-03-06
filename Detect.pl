#!/usr/bin/perl
# By Mody404 uwu

use strict;
use warnings;

# !!Set the log file path!!
my $logfile = "/var/log/modyalert.log";

open(my $log, ">>", $logfile) or die "Could not open log file: $!\n";


while (1) {

  # !!change to you interface!!
  my $output = `tcpdump -n -c 1 -i eth0`;

 
  if ($output =~ /([A-Z]+) .* ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)\.([0-9]+) > ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)\.([0-9]+)/) {
    my $protocol = $1;
    my $src_ip = $2;
    my $src_port = $3;
    my $dst_ip = $4;
    my $dst_port = $5;

  
    if (($protocol eq "TCP" && $dst_port == 23) || ($protocol eq "UDP" && $dst_port == 69)) {

      my $log_message = "Anomaly detected - Protocol: $protocol, Source IP: $src_ip, Destination IP: $dst_ip, Destination Port: $dst_port\n";
      print $log_message;
      print $log $log_message;
    }
  }
}
