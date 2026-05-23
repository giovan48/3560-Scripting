#!/bin/bash
## week2 - 14052026
##In class exercises

##Variables, input and output
echo "hello world"
printf "Hello\nworld\n"
echo "enter firstname"
read firstname
lastname="alarcon"
echo "Name: "$firstname" "$lastname""
echo "current user: $(whoami)"
echo "current directory: "$(pwd)""
echo "info about this script"
echo "Name: $0"
echo "Parameter 1: $1"
echo "Number of Parameters: $#"

##Conditionals
if ls | grep sh | wc
then
	echo "Found .sh files"
else
	echo "Not found .sh files"
fi

if [[ -e script1.sh ]]
then
	echo "File Exists"
else
	echo "File does not exist"
fi

username=$(whoami)
if whoami | grep "$username" 
then
	echo "User exists"
	echo "Username: "$username""
else
	echo "User does not exist"
fi

##Loops
## while loop
echo "while loop"
i=0
while (( i < 5 ))
do
	echo "Current Number: "$i""
	let i++
done

while ls | grep -q .sh
do
	echo "there is a file with sh in its name here:"$(pwd)""
	cd ..
done

##for loop
echo "For loop"
for (( i=0; i < 5; i++))
do
	echo "Current Number: "$i""
done

##Functions
function myfun()
{
	#function body
	echo "inside function!!!"
}
myfun

##pattern Matching
#	[]	x[abc]y
#	!|^	[^aeiou] 	it matches anything but aeiou












