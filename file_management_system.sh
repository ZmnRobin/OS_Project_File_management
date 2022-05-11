#!/bin/bash

clear
echo "**************Welcome to File Management System*************"
echo "How can I help you today?"
echo "Enter :- "
echo "\t 1. Create a File"
echo "\t 2. Create Position of File"
echo "\t 3. Rename a File"
echo "\t 4. Remove a File"
echo "\t 5. Exit"

echo "Enter Choice"
read choice
case $choice in
1)sh create_file.sh
;;
2)sh create_position_of_file.sh
;;
3)sh rename_file.sh
;;
4)sh remove_file.sh
;;
5)exit
;;
esac



