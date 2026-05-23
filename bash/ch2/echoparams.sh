#!/bin/bash
#
# Cyber Ops with bash
##chapter 2

##Shortcuts
#lines numbers in ubuntu terminal 
##	alt + shift + 3
##	esc + #

#Lines numbers permanent for the user
##	nano ~/.nanorc
##	set linenumbers	

	

#Topics
## Parameters in bash
## Input
## conditionals

##Parameters in bash
echo "This is script's name: $0"
echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
echo "Number of parameters: $#"

##Input
echo "Enter code"
read code
echo "This is the code: $code"
echo "This means success(0) or fail(=!0) the previous command: $? "

##Conditionals
if cd /home/gal02
then
	echo "Here is what is in /home/gal02/"
	ls -l
else
	echo "/home/gal02 dir does not exist"
fi

curr_dir=$(pwd)
echo "Current directory: $curr_dir"
echo "change to /home/gal02/ch2_workshop/"
cd /home/gal02/ch2_workshop/
echo "After change: $(pwd)"
echo "These are the files in dir: $(ls -l)"

if ls | grep  ".txt"
then
	echo "found txt file"
else
	echo "txt file not found"
fi

ls | grep txt | wc

##checking if a file exists on the filesystem
filename="echoparams.sh"
if [[ -e $filename ]]		#use $ only accessing variables
#if [[ -e echoparams.sh  ]]	#use only actual filename wo $
then
	echo "echoparams.sh exists"
else
	echo "echoparams.sh does not exist"
fi

##Testing  strings/literal variables
echo "enter num1"
read num1
echo "enter num2"
read num2
echo "Num1 is: $num1"
echo "Num2 is: $num2"

if [[ $num1 -lt $num2 ]]
then	echo "value is too small"
fi

##Testing numeric variables
if (( num1 < 50 ))
then    echo "value is too small"
fi

##
echo "Currrent directory: $(pwd)"
cd /home/gal02/ch1_workshop; ls
echo "after change directory is: $(pwd)"











