#!/bin/bash
#Author: Divakar R
# Automation of Tomcat httpd actions

clear

user=$(id -u)

if [[ $user -ne 0 ]]
  then
    echo "Your not root user, Please switch to root user"
    exit
fi

read -p "Enter your action for httpd: " action

if [[ $action = Start ]]
then
    echo "You have selected Start"
    sudo service httpd start
elif [[ $action = Stop ]]
then
    echo "You have selected Stop"
    sudo service httpd stop
elif [[ $action = Restart ]]
then
    echo "You have selected Restart"
    sudo service httpd restart
elif [[ $action = Status ]]
then
    echo "You have selected Status"
    sudo service httpd status
fi

<< com
if [[ $# -ne 1 ]]
then
   echo "Please run this shell script as follows:"
   echo "Usage: "
   echo "$0  start|stop|restart|status"
   exit
fi

#read -p "Enter your action for httpd: " usr_action

usr_action=$1

case $usr_action in

    start)  
         echo "Starting httpd....."
         sudo service httpd start ;;
    stop)
         echo "stoping httpd...."
         sudo service httpd stop ;;
    restart) 
         echo "restarting httpd ......."
         sudo service httpd restart ;;
    status)
         echo "finding the status......."
         sudo service httpd status ;;
    *)
         echo "your action is invalid"
         echo "valid actions are start|stop|restart|status" 
esac
com

echo " Thank you ...!" 
