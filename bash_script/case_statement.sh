#!/bin/bash
read -p "Please enter your fruit name: " fruit
case $fruit in
    apple)
        echo " it is an apple"
        ;;
    mango)
        echo " it is a mango"
        ;;
    *)
        echo " it is someting else"
        ;;
esac