#!/bin/bash
##

##user input
echo "Enter employee Account filename"
read filename
if [[ -e "$filename" ]]
then
	echo "Current username: $(whoami)"
	echo "Current date/Time: $(date)"
	echo "Processing filename: "$filename""
	num_accounts=$(wc -l < "$filename")
	echo "Number of accounts in the file: "$num_accounts""
	priv_accounts=$(grep -n  "sudo" "$filename")
	echo "number of privileged accounts in the file: $priv_accounts"
else
	echo "Account does not exist"
fi
