#!/bin/bash
clear
read -p "Enter your file extension: " ext
case $ext in
 ".txt")
       ls -ltr *.txt
       ;;
 ".sh")
       ls -ltr *.sh
       ;;
 *)
       echo "Sorry! Invalid Extention"
       ;;
esac
