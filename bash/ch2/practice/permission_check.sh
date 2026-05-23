#!/bin/bash
##File Permission checker
##Create a Bash script for a Linux administrator to verify file permissions.

##user input
##Create a Bash script for a Linux administrator to verify file permissions.

echo "Enter filename"
read filename
echo "Filename entered: $filename" | tee permission_report.txt
echo "Current Linux username: $(whoami)" | tee -a permission_report.txt
echo "Current date and time: $(date)" | tee -a permission_report.txt
##conditional
if [[ -e "$filename" ]]
then
	if [[ -r "$filename" ]]
	then
		echo "File is readable" | tee -a permission_report.txt
	fi
	if [[ -w "$filename" ]]
	then
		echo "File is writable" | tee -a permission_report.txt
	fi
	if [[ -x "$filename" ]]
	then
		echo "File is executable" | tee -a permission_report.txt
	fi
else
	echo "File does not exist" | tee -a permission_report.txt
fi



