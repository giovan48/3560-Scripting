#!/bin/bash
echo "enter name" | tee  system_report.txt
read name
echo "Entered Name is: $name" | tee -a system_report.txt
echo "Welcome $name !!!" | tee -a  system_report.txt
current_user=$(whoami)
echo "Current user: $current_user" | tee -a system_report.txt
echo "enter filename" | tee -a system_report.txt
read filename
if [[ -e $filename ]]
then
	echo "The file exists" | tee -a system_report.txt
else
	echo "The file does not exist" | tee -a system_report.txt
fi
