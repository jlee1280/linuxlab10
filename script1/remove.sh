#!/bin/bash

CONTACT="contact-list.txt"

echo -n "Enter ID number to delete: "
read number

# move file before delete
mv $CONTACT contact-list2.txt

#tell user what ID number they deleted
echo "-----------ID Number $number has been deleted----------------"

#This will delete with the following ID( number line) indicated by the user
nl --number-separator=":" contact-list2.txt | grep -v $number: | awk -F: '{print $2}' | tee $CONTACT

echo -e "\nContact List Updated!"
