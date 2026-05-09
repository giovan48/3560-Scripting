#!/bin/bash
#This script contains a collection of commonly used Linux commands 
#and concepts related to standard input/output/error, redirection, 
#and piping. It serves as a quick reference for users to understand and 
#utilize these commands effectively in their Linux environment.

#Basic Linux Commands######
#ls list directory contents
#cd change directory
#pwd print working directory
#mkdir make directory
#rm remove files or directories
#cp copy files and directories
#mv move or rename files and directories
#touch create an empty file or update the timestamp of an existing file
#cat concatenate and display file contents
#echo display a line of text
#grep search for patterns in files
#find search for files in a directory hierarchy
#chmod change file permissions
#chown change file owner and group
#history display command history

#####Standard Input/Output/Error######
#standard input (stdin 0) - the default source of input for commands, usually the keyboard
#standard output (stdout 1) - the default destination for output from commands, usually the terminal
#standard error (stderr 2) - the default destination for error messages from commands, usually the terminal 

##Redirection and Piping####
#> redirect standard output to a file, overwriting the file if it already exists
    #cat file.txt > output.txt  # Redirect standard output to a file
    #cat < file1.txt > file2.txt  # Redirect standard output to a file
#>> redirect standard output to a file, appending to the file if it already exists
#2> redirect standard error to a file, overwriting the file if it already exists
    #ls non_existent_file 2> error.txt  # Redirect standard error to a file
    #cat < file1.txt 2> error.txt  # Redirect standard error to a file
#2>> redirect standard error to a file, appending to the file if it already exists
#cat < file1.txt &> output.txt  # Redirect both standard output and standard error to a file
#cat < file1.txt > /dev/null  # Redirect standard output to /dev/null (discard output)
#ping -c 3 google.com > /dev/null  # Redirect standard output to /dev/null (discard output)
#cat < file1.txt | tee output.txt  # Redirect standard output to a file and also display it in the terminal

#| pipe the output of one command to another command as input
    #ls -l /etc | tee system_files.txt # Redirect standard output to a file and also display it in the terminal
    #ls -l | grep "pattern"  # Pipe the output of ls to grep to search for a pattern in the output

##Running Commands in the Background
#ping google.com > ping.log & # Run ping command in the background and redirect output to ping.log
#fg %1 # Bring the most recently backgrounded job to the foreground
##Warning --##Be careful not to confuse & (which is used to send a task to the background)
 #and &> (which is used to perform a combined redirect of standard output and 
 #standard error).


