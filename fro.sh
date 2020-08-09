#!/bin/bash
<< com
for diva in $(ls)
do
  echo "this is for_loop"
  echo "for this valaue: $diva"
done
com

echo "starting for loop"
cnt=1
for each_file in $(ls *.sh)
do
if [[ $cnt -eq 1 ]]
then
echo "$each_file"
break
fi
done

