#!/bin/bash
#监控SNI服务是否开启
 
port=`netstat -nlt|grep 443|wc -l`
if [ $port -ne 1 ]
then
 sudo service sniproxy restart
else
 echo "SNIProxy is running"
fi
