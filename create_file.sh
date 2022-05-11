#!/bin/bash

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Create a File***************"
 echo "Wish to create a file(press y for yes, any other key for no)"
 
 read reply

if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
fi

 echo "Give the path of the directory where you want to create a file"
        read path

if [ -f $path ]
        then
        echo "File exists"
 
 else
        touch $path
	echo "File is created!.";
 fi

 echo "Do you wish to continue(y/Y)"
 
 read reply
 done

bash file_Management_System.sh

