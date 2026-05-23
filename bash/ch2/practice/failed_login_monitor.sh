#!/bin/bash
##Create a Bash script for a Linux administrator to monitor failed
## login attempts from the system authentication log.

#user input
echo "Enter log filename" | tee failed_login_report.txt
read filename
#conditional
if [[ -e "$filename" ]]
then
	echo "Current username: $(whoami)" | tee -a failed_login_report.txt
	echo "Current date and Time: $(date)" | tee -a failed_login_report.txt
	echo "Log filename: $filename" | tee -a failed_login_report.txt
	#failed_count=$(cat "$filename" | grep -ci "failed")
	failed_count=$(grep -ci "failed" "$filename")
	echo "total failed login attempts: $failed_count" | tee -a failed_login_report.txt
else
	echo "The file does not exist" | tee -a failed_login_report.txt
fi
