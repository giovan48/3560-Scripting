#!/bin/bash
##Review authentication log to investigate failed login
##Exercise 2 - Failed login report
## user input
clear
echo "Enter log filename"
read filename
echo "Enter username to search"
read username
if [[ -e $filename ]]
then
	echo "-------------------------"
	echo "Current username: $(whoami)" | tee failedreportgal02.txt
	echo "Current date/Time: $(date)" | tee -a failedreportgal02.txt
	echo "--------------------------"
	numlines=$(cat $filename | wc -l)
	echo "Total number of lines: $numlines" | tee -a failedreportgal02.txt
	numfailedlogins=$(cat $filename | grep -i "failed" | wc -l)
	echo "Total failed logins: $numfailedlogins" | tee -a failedreportgal02.txt
	echo "Failed attempts" | tee -a failedreportgal02.txt
	grep -i "failed" $filename | tee -a failedreportgal02.txt
	echo "--------------------------" | tee -a failedreportgal02.txt
	echo "logins performed by $username" | tee -a failedreportgal02.txt
	grep -i "$username" $filename | tee -a failedreportgal02.txt
else
	echo "Does not exist"
fi

