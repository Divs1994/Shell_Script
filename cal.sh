#!/bin/bash
clear
read -p " Enter first number: " x
read -p " ENter second number: " y
echo "Select your options below:"
echo "=========================="
echo "1. Add"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"

read -p "Enter your options: " opt
case $opt in
 1) echo "The additon of $x and $y: $(bc<<<"scale=4;$x+$y")"
    ;;
 2) echo "The subraction of $x and $y: $(bc<<<"scale=4;$x-$y")"
    ;;
 3) echo "The multiply of $x and $y: $(bc<<<"scale=5;$x*$y")"
    ;;
 4) echo "The division of $x and $y: $(bc<<<"scale=5;$x/$y")"
    ;;
 *) echo "Invalid option"
    ;;
esac
