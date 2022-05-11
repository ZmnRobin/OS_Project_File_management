#!/bin/bash

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Remove a File***************"
 echo "Wish to remove a File(press y for yes, any other key for no)"
 
 read reply

 if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
 fi

 echo "Give the path of the file you want to remove"
 read path
	
 if [ -f $path ]
 then 
  echo "File exists"
  echo "source: $path"
rm -i "$path"
    echo "File deleted"
  else
  echo "Error: File doesn't exists" 
fi

echo "Do you wish to continue(y/Y)"
 
read reply
done

bash file_Management_System.sh

