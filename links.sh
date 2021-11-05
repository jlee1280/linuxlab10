#!/bin/bash

DEFAULT="link.txt" 
SAVEURL="savedurl.txt"

  # the user link html will be written on a existing file: link.txt
  if [ $1 ];then
  wget -q $1 -O $DEFAULT
  if [ $2 ];then
    # reads the link.txt file and write the URLs to savedurl.txt file
    cat $DEFAULT | grep -Eo "(https)://[a-zA-Z0-9./?=_%:-]*" | sort -u > "$2"
    echo "ALL URLS have been saved to file $2"
  fi
  fi
exit 1

while getopts ":h" opt;do
    case ${opt} in
         h)
            echo "Option: [-f url] will write URL to link.txt"
            echo "Option: [url] will write HTML to link.txt"
            exit 1
            ;; 
    esac
done
