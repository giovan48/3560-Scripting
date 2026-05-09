#!/bin/bash

# 1- Write a command that executes ifconfig and redirects standard output to a file named ipaddress.txt.
    #ifconfig > ipaddress.txt
# 2- Write a command that executes ifconfig and redirects standard output and appends it to a file named ipaddress.txt.
    #ifconfig >> ipaddress.txt
# 3- Write a command that copies all of the files in the directory /etc/a to the directory /etc/b and redirects standard error to the file copyerror.log.
    #cp /etc/a/* /etc/b/ 2> copyerror.log
# 4- Write a command that performs a directory listing (ls) on the root file directory and pipes the output into the more command.
    #ls / | more
# 5- Write a command that executes mytask.sh and sends it to the background.
    #touch mytask.sh # Create the mytask.sh file if it doesn't exist
    #sudo chmod 777 mytask.sh # Make the mytask.sh file executable
    #./mytask.sh & # Run the mytask.sh script in the background
# 6- Given the following job list, write the command that brings the Amazon ping task to the foreground:
    #[1]   Running                 ping www.google.com > /dev/null &
    #[2]-  Running                 ping www.amazon.com > /dev/null &
    #[3]+  Running                 ping www.oreilly.com > /dev/null &
    #fg %2 # Bring the Amazon ping task to the foreground
