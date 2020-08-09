#!/bin/bash
#Author: Divakar
#IF command
read -p "Please enter you first number: " x
read -p "Please enter your second number:" y
echo " Please select the options from belo: "
echo "==============================="
echo " Equal "
echo " Less Than"
echo " Greater Than"
echo " Not equal"
read -p "Please enter your options from above: " Opt


case $Opt in
 

 Equal)
    echo "you have selected the below Equal option"
           if [[ x -eq y ]]
            then
              echo "Successfull"
            else
              echo "Unsuccessfull"
           fi
           ;;

  2) 
   echo "you have selected the Less Than option"

               if [[ $x -lt $y ]]
                then
                  echo "Successfull"
                else
                  echo "Unsuccessfull"
                fi
                ;;

  3) 
           echo "you have selected the Greater Than option"
            if [[ $x -gt $y ]]
              then
             echo "Successfull"
            else
             echo "Unsuccessfull"
              fi
            ;;

 4)
   echo "you have selected the Less Than option"
          if [[ $x -ne $y ]]
          then
           echo "Successfull"
          else
           echo "Unsuccessfull"
           fi
           ;;

  *) 
    echo "You have selected a invalid Options"

esac
