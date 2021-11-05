#!/bin/bash

CONTACT="contact-list.txt"

#Asking user for name
echo -n "Please enter your name: "
read name

#Asking user for phone no.
echo -n "Please enter your phone number: "
read phone

#Asking user for address
echo -n "please enter your address: "
read address

#Asking user for email
echo -n "please enter your email: "
read email

#Assigns values to contact list
echo "$name ; $phone ; $address ; $email" >>$CONTACT

exit 0
