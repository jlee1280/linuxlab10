#!/bin/bash

DEFAULT="link.txt" 
SAVEURL="savedurl.txt"

while getopts ":hf:" opt;do
      case ${opt} in
          f)      
                  if [ $3 ];then
                    wget -q $2 -O $DEFAULT
                    cat $DEFAULT | grep -Eo "(https)://[a-zA-Z0-9./?=_%:-]*" | sort -u > "$3"
                    echo "ALL URLS have been saved to file $3"
                  else 
                    echo "Please enter file-name!"
                  fi
                  exit 0
              ;;
          h)
               echo "Option: [url] will save all the url to an existing file called savedurl.txt"
               echo "Option: [-f url filename] will save all the url to the filename"
               exit 0
               ;;
      esac
done

if [ $1 ] || [ $2 ];then
    # the user link html will be written on a existing file: link.txt
    wget -q $1 -O $DEFAULT
    # reads the link.txt file and write the URLs to savedurl.txt file
    cat $DEFAULT | grep -Eo "(https)://[a-zA-Z0-9./?=_%:-]*" | sort -u > "$SAVEURL"
else
   echo "Please enter website link!"
fi
