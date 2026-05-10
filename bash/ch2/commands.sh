#!/bin/bash
#chapter 2: Bash Primer
#This script contains a collection of commonly used Linux commands

#Output Commands######
echo "Hello world" #This is a comment in bash. Comments are ignored by the shell and are used to provide explanations or notes about the code.
printf "Hello World\n" #The printf command is used to format and print text to the terminal. The \n is a newline character that moves the cursor to the next line after printing "Hello World".

#variables 
# Create variable
firstname="Gio"
lastname="alarcon"

# Print variable
echo "This is $firstname $lastname"

#double quotes - interpret variables and special characters
echo "My name is $firstname $lastname"
#single quotes - do not interpret variables or special characters
    #echo 'My name is $firstname $lastname'
    #output: My name is $firstname $lastname

#Storing the output of a command in a variable
current_date=$(date) # The date command is executed and its output is stored in the current
echo "Current date is $current_date"