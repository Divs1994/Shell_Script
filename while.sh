#!/bin/bash

<< com
while [[ 3 -gt 2 ]]
do
echo "it's done"
break
done
com

<< com1
while read $line 
do
 grep happy $line
done


com1

a=0

while [ $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

