#!/bin/bash
clear

rm -rf storage_info.txt
file_usage_threshold=20

df -Ph | grep -vE "tmpfs" | while read line
do
	file_sys=$(echo $line | awk '{ print $1 }')
	file_usage=$(echo $line | awk '{ print $5 }' | sed 's/%//g')
	echo "file system name: $file_sys, file system usage: $file_usage"
	 if [[ $file_usage -gt $file_usage_threshold ]]
	 then
	   echo "$file_sys : $file_usage " >> storage_info.txt 
	 fi
done

cont=$( cat storage_info.txt | wc -l )
if [[ cont -gt 0 ]]
then
 echo "Some file system usage is more than limit"
 echo -e "Subject:Alert\n\n $(cat storage_info.txt)\n" | /usr/sbin/sendmail divs18071994@gmail.com

fi
