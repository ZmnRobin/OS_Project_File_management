#!/bin/bash

testfile=/Users/ektasharma/os/testfile

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Rename a File***************"
 echo "Wish to rename a File(press y for yes, any other key for no)"
 
 read reply

if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
fi

 echo "Give the path of the file you want to rename"
	read path
	
echo "Give the path of the file you want to change with"
	read newpath
if [ -f $path ]
then 
echo "File exists"
echo "source: $path"
echo "dest: $newpath"
mv -i "$path" "$newpath"
echo "Done" 
else
	echo "Error: File doesn't exists" 
 fi

 echo "Do you wish to continue(y/Y)"
 
 read reply
 done

bash file_Management_System.sh

