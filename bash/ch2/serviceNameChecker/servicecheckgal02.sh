#!/bin/bash
##Exercise 3 - Service Name checker
clear
num_args=$#
echo "Arguments provided: $num_args" | tee servicecheckgal02.txt
if (( num_args > 0 ))
then
	for ARG
	do
		echo "-----------------------------" | tee -a servicecheckgal02.txt
		echo "Checking service/process: $ARG" | tee -a servicecheckgal02.txt
		lines=$(ps aux | grep "$ARG" | wc -l)
		lines=$((lines-1))
		echo "Matches Found: $lines" | tee -a servicecheckgal02.txt
	done
else
	echo "No service names were provided" | tee -a servicecheckgal02.txt
fi
