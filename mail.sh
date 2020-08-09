#!/bin/bash
TO="rdivakar739@gmail.com"
TH_L=800
free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_L ]]
then
  echo -e "Server is running with low RAM Size\nAvaialbe RAM is: $free_RAM" | /var/spool/mail/ec2-user -s "RAM INFO $(date)" $TO
fi
