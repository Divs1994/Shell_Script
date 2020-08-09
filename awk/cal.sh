#!/bin/bash
read -p "Enter a value: " a
read -p "Enter a value: " b

#echo "$a $b" | awk '{ a=$1;b=$2; print "Sum="a+b,"Sub="a-b,"Div="a/b,"Mul="a*b }'

awk -v a=$a -v b=$b 'BEGIN { print "Sum="a+b }'
