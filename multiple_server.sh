#!/bin/bash

print_header(){
 printf "*%.s" $(seq 1 $(tput cols))
 printf "\n"
}

center_msg(){
 msg=$1
 terminalcol=$(tput cols)
 msg_length=$(echo ${#1})
 pre_space=$(($((terminalcol-msg_length))/2))

 print_header
 printf " %.s" $(seq 1 $pre_space)
 printf "%s" "$1"
 printf "\n"
 print_header
}

center_msg "welcome to my new world"
