
#!/bin/bash
#Author: Divakar R
#Basics for for_loop
#for each_value in 1 2 3
<< com

#Basic for_loop
for each_file in $(ls)
do
   echo "this is a loop"
   echo "for this iteration each_value is: $each_file"
done



#c_type_for_loop.sh

clear
echo "we are working with loops"
for((cnt=0;cnt<=32;cnt++))
do
  echo "$cnt"
done

echo "we complete for loop"

#infi_for_loop.sh

echo "This is a for loop"
cnt=1
for((;;))
do
  echo "this is infi loop"
  ((cnt++))
  sleep 1
  if [[ $cnt -eq 10 ]]
  then
	  break
  fi
done

echo "out of loop"


echo "Thank you so much ...!"
com

echo " This is for infi loop"
cnt=1
for((;;))
do
 echo "this for loop-infi"
 ((cnt++))
 sleep 1

 if [[ $cnt -eq 9 ]]
 then
   break
 fi
done
 echo "Done with for loop"

