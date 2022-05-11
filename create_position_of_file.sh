#!/bin/bash

testfile=/Users/ektasharma/os

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Move a File***************"
 echo "Wish to move a File(press y for yes, any other key for no)"
 
 read reply

 if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
 fi

 echo "Give the path of the file"
 read path

 if [ -f $path ]
 then 
  echo "File exists"
  echo "source: $path"
  echo "dest: $testfile"
  mv "$path" "$testfile"
  echo "Done"  
 else
  echo "Error: File doesn't exists" 
 fi

 echo "Do you wish to continue(y/Y)"
 
read reply
done

bash file_Management_System.sh

