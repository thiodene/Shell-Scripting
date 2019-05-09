#!/bin/bash

cd /var/www/html/images/

VAR=true

while [ $VAR = true ]
do

  handler=$(mysql --user='phpmyadmin' --password='EQ$ua.12' --database='utoronto' -s --execute="select handler from data_handling limit 1;"|cut -f1)
  if [ "$handler" != "r" ] ; then
    VAR=false
  fi

  echo "$handler"
  echo "$VAR"
  fswebcam -d /dev/video0 -r 1920x1080 jpeg 85 -D 0 -F 10 --crop 1900x320 --no-banner /var/www/html/images/camera\%s.jpeg
  NEW_JPEG=$(ls -t | grep '\>.jpeg' | head -1)
  chmod 777 $NEW_JPEG
  sleep 1

done
