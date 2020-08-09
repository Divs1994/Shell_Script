#!/bin/bash
clear

server_name=$(uname -n)
ip_add=$(ifconfig | grep inet | awk 'NR==1 { print $2 }')
os_type=$(uname)
up_time=$(uptime | awk '{ print $3}')
#creating header for CSV file
echo "Sl.no,Server_Name,IP_Address,OS_Type,Uptime" > Inventory.csv
echo "1,$server_name,$ip_add,$os_type,$up_time" >> Inventory.csv
