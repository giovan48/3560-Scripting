#!/bin/bash
firstvar="beginning"
secondvar="This is just the $firstvar"
echo $secondvar
CMDOUT=$(pwd)
echo $CMDOUT > cmdout.txt

#saving data in variables
#current directory
curr_dir=$(pwd)
echo "This is the current directory: $curr_dir"

curr_user=$(whoami)
echo "The current user is $curr_user" | tee user.txt

curr_date=$(date)
echo "Current date is: $curr_date"




TODAY=$(date)
echo $TODAY &>> date.txt

