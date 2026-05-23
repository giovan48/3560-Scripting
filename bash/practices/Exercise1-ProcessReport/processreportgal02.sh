#!/bin/bash
##Exercise 1 - Process Report
##A Linux administrator wants a quick report
##about the processes currently running on the system.
clear
echo "--------Exercise 1 - Process Report------"
echo "System information----"
echo "Current username: $(whoami)" | tee processreportgal02.txt
echo "Current Date/Time: $(date)" | tee -a processreportgal02.txt
echo "current working directory: $(pwd)" | tee -a processreportgal02.txt
echo "----Analyzing the running Process----" | tee -a processreportgal02.txt
num_process=$(ps aux | wc -l)
uniq_users=$(ps aux | cut -d " " -f1 | sort | uniq | wc -l )
echo "total number of process lines: $num_process " | tee -a processreportgal02.txt
echo "Total number of unique users running process: $uniq_users" | tee -a processreportgal02.txt
echo "Reading user input-----" | tee -a processreportgal02.txt
echo "Enter username" | tee -a processreportgal02.txt
read username
if [[ -z $username ]]
then
	echo "Empty Username"
else
	echo "Process belonging to $username" | tee -a processreportgal02.txt
	ps aux | grep $username | tee -a processreportgal02.txt
fi
