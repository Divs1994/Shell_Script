#!/bin/bash
#Author: Divakar R 
#Finding httpd version if it is installed
#which httpd &>/dev/null  && echo "httpd is installed on this host"

clear

<< com1
if which httpd &>/dev/null
then
    echo "httpd is installed on this host"
fi
com1

<<com2
which httpd &>/dev/null
httpd_status=$?

if [[ $httpd_status -eq 0 ]]
then
  echo "httpd is installed on this host"
fi
com2

#which httpd &>/dev/null && echo "httpd is installed on this host" || echo "httpd is not installed"

if which httpd &>/dev/null
then
    echo "httpd is installed on this host"
    http_ver=$(httpd -v | awk -F '[ /]' '/version/ { print $4 }')
    echo "The version of httpd is: $http_ver"
else
   echo "httpd is not installed"
fi

echo "Thank you...!"
