#!/bin/bash
read -p "Enter any single character: " character
case $character in
  [0-9])
      echo "you entered single number"
      ;;
  [a-z])
      echo "you entered the lower case"
      ;;
  [A-Z])
      echo "you entered the uppper case"
      ;;
  *)
      echo "Unable to identify your input"
      ;;
esac
