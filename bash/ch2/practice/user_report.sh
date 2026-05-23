#!/bin/bash
echo "Enter your name" | tee login_report.txt
read name
echo "Welcome $name!!!" | tee -a login_report.txt
username=$(whoami)
echo "This is the current username: $username" | tee -a login_report.txt 
current_dir=$(pwd)
echo "This is the current directory: $current_dir" | tee -a login_report.txt
echo "Enter a filename" | tee -a login_report.txt
read filename
echo "This is the filename entered: $filename" | tee -a login_report.txt
if [[ -e $filename ]]
then
	echo "The file exists!!!" | tee -a login_report.txt
else
	echo "The file does not exist" | tee -a login_report.txt
fi
