#!/bin/bash
#Author : Divakar R
clear
which wget 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
  echo "Please install wget and retry"
  exit 1
fi

if [ -e "index.html" ]
then
  rm -rf index.html
fi

url="https://mirrors.edge.kernel.org/pub/software/scm/git/"

wget $url
if [ $? -ne 0 ]
then
 echo "Unable to download the git version"
 exit 2
fi

echo "Collecting the required version info from the Git-scm-website"
echo "*****************Please wait*********************************"
declare -a git_vers
while read line
do
  git_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p'|awk -F '"' '{ print $2 }'|cut -c 5- | awk -F '.tar.gz' '{ print $1 }'))
  #sleep 1echo "Collecting the required version info from the Git-scm-website"
done < index.html

echo "The all avialabke git version are: "
#echo "${git_vers[*]}"
cnt=0
no_vers=${#git_vers[*]}
WIDTH=15
for each_ver in ${git_vers[*]}
 do
  #echo -e "\t\t ${git_vers[cnt]} \\t ${git_vers[$((cnt+1))]} \\t ${git_vers[$((cnt+2))]}
  printf "%-*s %-*s %-*s %-*s %-*s\n" $WIDTH ${git_vers[$cnt]} $WIDTH ${git_vers[$((cnt+1))]} $WIDTH ${git_vers[$((cnt+2))]} $WIDTH ${git_vers[$((cnt+3))]} $WIDTH ${git_vers[$((cnt+4))]}
    cnt=$((cnt+5))
    if [ $cnt -ge $no_vers ]
    then
      break
    fi
done
echo " Thank you ...! "

