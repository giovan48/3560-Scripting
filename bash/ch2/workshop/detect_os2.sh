#!/bin/bash
##workshop ch2.2
#function to detect os
clear
#define function
function detect_os()
{
	if type -t wevtutil &> /dev/null
	then
		os_name=Windows
		echo "Windows"
	elif type -t scutil &> /dev/null
	then
		os_name=MacOs
		echo "MacOs"
	else
		os_name=Linux
		echo "Linux"
	fi
}
#call function from main wo return
echo "Calling function from main with no return"
detect_os &> /dev/null
echo  "OS detected:  $os_name"
echo ""
#call function from main with return
echo "Calling function from main with return"
result=$(detect_os)
echo "OS detected: $result"
