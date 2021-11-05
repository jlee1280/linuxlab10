#!/bin/bash

CONTACT="contact-list.txt"

#asking user for input
echo -e "\nwhat is the data you are looking for?"
echo -e "Please specify the name, phone number, address, or email (e.g. Nathan or 778-111-1111): "
read find

#formatting to look nicer
echo "-------------Searching for ($find)--------------------------"

#This will search for the data
grep -i $find $CONTACT
