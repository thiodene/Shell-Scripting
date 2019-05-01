#!/bin/bash 

cd /var/www/html/images/

while [ true ]
do
	fswebcam -d /dev/video1 -r 1920x1080 jpeg 85 -D 0 -F 10 --crop 1900x320 --no-banner /var/www/html/images/camera\%s.jpeg
	NEW_JPEG=$(ls -t | grep '\>.jpeg' | head -1)
	chmod 777 $NEW_JPEG
	sleep 1

done
