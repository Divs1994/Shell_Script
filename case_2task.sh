#!/bin/bash
<< com
read -p "Enter you name: " urname
echo "Your name in upper case: ${urname^^}"
echo "Your name in lower case: ${urname,,}"
com

read -p "Enter your name: "
echo "${REPLY^^}"
echo "${REPLY,,}"
echo "$REPLY"
