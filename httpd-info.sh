#!/bin/bash
httpd_v=$(httpd -v 2>&1 | awk -F '/' 'NR==1{print $2}' | awk '{print $1}')
httpd_s=$(sudo service httpd status grep status | awk '{print $3}')
httpd_p=$(cat /etc/httpd/conf/httpd.conf | grep ^Listen | awk '{print $2}')
echo "The httpd version is:  $httpd_v"
echo "The current status of httpd is: $httpd_s"
echo "The port for httpd is: $httpd_p"
