#!/bin/bash
#Remy Vancil and Matthew White
#Date: 2/6/2020

#Problem 1 Code
echo "Input a filename to be read:"
read filename #reads user-inputted file name
echo "Input a regular expression:"
read regex  #grep regex command and user input
grep  $regex $filename
echo "Count of number of emails:"
grep -E -c '@' $filename
echo "List of all phone numbers containing the 303 area code:"
grep -E -o '^[03]{3}-[0-9]{3}-[0-9]{4}' $filename
grep -E \w*geocities.com$ $filename >> email_results.txt
