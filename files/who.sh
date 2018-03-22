#!/bin/sh

who /var/run/utmp | awk '{gsub(/[\(\)]/,"")}1 {($6=="")?ip=2:ip=6; print "who,user="$1",ip="$ip" ip=\""$ip"\",online=1"}'
