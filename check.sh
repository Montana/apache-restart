#!/bin/sh

run=`ps ax | grep /usr/sbin/httpd | grep -v grep | cut -c1-5 | paste -s -`
if [ “$run” ];
then
echo “Apache is running inside this Travis instance”
else
/etc/init.d/http
