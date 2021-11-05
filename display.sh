#!/bin/bash

CONTACT="contact-list.txt"

echo "    ID: Name ; Phone Number ; Address ; Email"
echo "    -- ------ -------------- --------- ------"
nl --number-separator=": " $CONTACT
