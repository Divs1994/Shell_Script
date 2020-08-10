#!/bin/bash

clear

print_header(){
 printf "*%.s" $(seq 1 $(tput cols))
 printf "\n"
}

center_msg(){
 msg=$1
 terminalcol=$(tput cols)
 msg_length=$(echo ${#1})
 pre_space=$(($((terminalcol-msg_length))/2))

 print_header
 printf " %.s" $(seq 1 $pre_space)
 printf "%s" "$1"
 printf "\n"
 print_header
}

center_msg "Welcome to my new world"

check_remotepass (){
if [ ! -e "remotepass" ]
then
 center_msg "Please save your password in >>remotepass<< file and retry"
fi
}

check_user (){
if [ ! -e "remoteuser" ]
then
 center_msg "Please update your Server_User in >>remoteuser<< file and retry"
fi
}

check_list_of_user (){
if [ ! -e "list_of_user" ]
then
 center_msg "Please update the Server in >>list_of_user<< file and retry"
fi
}

check_remotepass
check_user
check_list_of_user

ssh_opt="sshpass -f remotepass ssh -n -o StrictHostkeyChecking=No divakar"

echo "SL.No,OS_Type,OS_Version,ARC_Type,CPU_Type" > Server_Info.csv
while read server
do
 echo "working on $server"
 OS_TYPE=$($ssh_opt@$server "cat /etc/os-release" | grep -w "NAME" | awk -F "NAME=" '{ print $2 }' | tr '"' " ")
 echo "$OS_TYPE" | grep -w "Amazon Linux" 1>/dev/null 2>/dev/null
 if [ $? -eq 0 ]
 then
  OS_VERSION=$($ssh_opt@$server "cat /etc/os-release" | grep -w "VERSION" | awk -F "VERSION=" '{ print $2 }' | tr '"' " ")
 fi

ARC_TYPE=$(uname -p)
CPU_TYPE=$(cat /proc/cpuinfo | grep -w "model name" | awk -F ":" '{ print $2 }')

echo "1,$OS_TYPE,$OS_VERSION,$ARC_TYPE,$CPU_TYPE" >> Server_Info.csv

done < list_of_user

center_msg "Thanks for using the script"
