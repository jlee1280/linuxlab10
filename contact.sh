#!/bin/bash

CONTACT="contact-list.txt"

exit=0

while getopts ":h" opt;do
     case ${opt} in
         h )
           echo "After running the contact script"
           echo "Typing 'add' as answer will add a new contact with a set of questions"
           echo "Typing 'remove' as answer will remove an existing contact with the corresponding contact ID"
           echo "Typing 'search' or 'retrieve' will look for a specific contact info in the contact"
           echo "Typing 'none' will exit the script"
           exit 1
           ;;
  esac
done

while [ $exit -ne 1 ]
do
  echo -e "\nWhat would you like to do in the contact list? "
  echo -e "Please type: add, remove, display, search/retrieve, or none: "
  read reply
  
  if [ "$reply" = "add" ]
  then 
    ./add.sh
  elif [ "$reply" = "remove" ]
  then 
    ./remove.sh
  elif [ "$reply" = "display" ]
  then 
    ./display.sh
  elif [ "$reply" = "search" ] || [ "$reply" = "retrieve" ]
  then
    ./find.sh
  elif [ "$reply" = "none" ] 
  then 
    exit=1
  else
    echo "Please re-enter! "
  fi
done
exit 1
