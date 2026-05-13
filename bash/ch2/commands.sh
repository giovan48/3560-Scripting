#!/bin/bash
#chapter 2: Bash Primer
#This script contains a collection of commonly used Linux commands

## Shortcuts
#To show numbers lines in ubuntu terminal
    # alt + shift + 3  | esc + # 
#To make line numbers permanent for the user, nano ~/.nanorc and add set linenumbers
    #nano ~/.nanorc
    #set linenumbers


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
#VARIABLE=$(command)
#current date and time
    current_date=$(date) # The date command is executed and its output is stored in the current
    echo "Current date is $current_date"
#current user
    current_user=$(whoami) # The whoami command is executed and its output is stored in the current_user variable
    echo "This is the current user: $current_user" | tee user.txt
#current directory
    current_dir=$(pwd) # The pwd command is executed and its output is stored in the current_dir variable
    echo "This is the current directory: $current_dir"
#current hostname
    current_hostname=$(hostname) # The hostname command is executed and its output is stored in the current_hostname variable
    echo "This is the current hostname: $current_hostname"

#Parameters in bash
#Positional parameters
    echo "Parameter -0- is: $0" # The $0 variable contains the name of the script being executed
    echo "Parameter -1- is: $1" # The $1 variable contains the first argument passed to the script
    echo "Parameter -2- is: $2" # The $2 variable contains the secong parameter passed to the script
    echo "Parameter -#- is: $#"  # The $# variable contains the number of arguments passed to the script

#input
    echo "enter code "
    read code
    echo "This is the code: $code"