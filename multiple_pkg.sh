#!/bin/bash

if [[ $# -eq 0 ]]
then
  echo "Usage: $0 pkg1 pkg2"
  exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
  echo "Please run as root user or sudo user"
  exit 2
fi

for my_pkg in $@
do
 if which $my_pkg &>/dev/null
 then
   echo "Already $my_pkg installed"
 else
   echo "Your $my_pkg is installing....."
   yum install $my_pkg -y &>/dev/null
    if [[ $? -eq 0 ]]
     then
       echo "Successfully installed $my_pkg pkg"
     else
       echo "Unable to install vim $my_pkg"
     fi
 fi 
done
