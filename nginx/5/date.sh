 #!/bin/bash
 
 LOG_PATH=/usr/local/nginx1102/logs/x.com.access.log
 
 BASE_PATH=/data/$(date -d yesterday +%Y%m%d)
 
 mkdir -p $BASE_PATH
 
 bakname=$BASE_PATH/$(date -d yesterday +%H%M).x.com.access.log

 #echo bakname
 
 mv $LOG_PATH $BASE_PATH
 
 touch $LOG_PATH
 
 kill -USR1 `cat /usr/local/nginx1102/logs/nginx.pid`
 
 