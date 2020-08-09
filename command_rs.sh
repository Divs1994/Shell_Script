#!/bin/bash




echo "Command for date"
 ssh -o StrictHostKeyChecking=no divakar@13.232.25.67 "date"
 ssh -o StrictHostKeyChecking=no divakar@13.232.25.67 "uptime"
 ssh -o StrictHostKeyChecking=no divakar@13.232.25.67 "free -m"

<<com1
for each_cmd in date uptime "free -m"
do
  echo "The $each_cmd output on server:13.233.102.17"
  #sshpass -f pwd.txt ssh -o StrictHostKeyChecking=no divakar@13.233.102.17 "$each_cmd"
  ssh -o StrictHostKeyChecking=no divakar@13.233.102.17 "$each_cmd"
  echo "====================================================================="
done
com1


