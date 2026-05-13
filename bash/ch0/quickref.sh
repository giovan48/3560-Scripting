#!/bin/bash
#Cybersecurity Ops with bash

#0 - Quick reference commands using in class and labs
##- grep -> search the contents of files for a specific pattern
    #-c #count the number of lines that match the pattern
    # wc -l #count the number of lines in a file or output
    #-E #use extended regular expressions for more complex pattern matching
    #-i #ignore case when searching for the pattern
    #-P #use Perl-compatible regular expressions for advanced pattern matching
    #-R #search recursively through directories for the pattern
    #-v #invert the match to find lines that do not match the pattern
    #-w #match the whole word only
    #-x #match the whole line only
    #-n #display the line number of each match
    #-H #display the filename for each match
    #-l #display only the filenames that contain the pattern
    #-L #display only the filenames that do not contain the pattern
    # -q #quiet mode, suppress output and return only the exit status of the command
    # pgrep #search for processes that match a specific pattern

## files and directories comparisson commands
    #-d #check if a directory exists
    #-e #check if a file exists
    #-r #check if a file exists and is readable
    #-w #check if a file exists and is writable
    #-x #check if a file exists and is executable

## literal comparisson commands
    # -e #check if a file exists
    # -r #check if a file exists and is readable
    # -w #check if a file exists and is writable
    # -x #check if a file exists and is executable
    #-eq #check if two strings are equal
    #-ne #check if two strings are not equal
    #-gt #check if a string is greater than another string
    #-lt #check if a string is less than another string
    #-ge #check if a string is greater than or equal to another string
    #-le #check if a string is less than or equal to another string
    #Testing  strings variables using [[ command ]]
        #71 echo "enter str1"
        #72 read str1
        #73 echo "enter str2"
        #74 read str2
        #75 echo "Str1 is: $str1"
        #76 echo "Str2 is: $str2"
        #77
        #78 if [[ $str1 < $str2 ]]
        #79 then    echo "value is too small"
        #80 fi

## numerical comparisson commands
    #-eq #check if two numbers are equal
    #-ne #check if two numbers are not equal
    #-gt #check if a number is greater than another number
    #-lt #check if a number is less than another number
    #-ge #check if a number is greater than or equal to another number
    #-le #check if a number is less than or equal to another number
    #Testing  numerical variables using (( )) command
        #71 echo "enter num1"
        #72 read num1
        #73 echo "enter num2"
        #74 read num2
        #75 echo "Num1 is: $num1"
        #76 echo "Num2 is: $num2"
        #77
        #78 if (( num1 < 50 ))
        #79 then    echo "value is too small"
        #80 fi

## command chaining and conditional executions
    #; #execute multiple commands sequentially, regardless of the success or failure of the previous command
        #cd fakefolder ; ls # This will attempt to change to a non-existent directory and then list the contents of the current directory, regardless of whether the cd command succeeded or failed
    #&& #execute the next command only if the previous command succeeded (exit status 0
        #cd /home && ls # This will change to the /home directory and then list its contents only if the cd command succeeded
        #mkdir testfolder && cd testfolder # This will create a new directory named testfolder and then change into that directory only if the mkdir command succeeded
    #|| #execute the next command only if the previous command failed (non-zero exit status)
        #cd fakefolder || echo "cd failed" # This will attempt to change to a non-existent directory and if it fails, it will print "cd failed"
        #ping google.com || echo "Network appears down" # This will attempt to ping google.com and if it fails, it will print "Network appears down"

## stat command - display detailed information about a file or directory, including its size, permissions, ownership, and timestamps
    #stat filename # This will display detailed information about the file named "filename"













#2- find -> search the system for files
    #-exec #execute specified command for each file found
    #-name #search by filename
    #-size #search by file size
    #-type #search by file type
#3- file
#4- cut
#5- head
#6-tail
#7- sort
#8- xxd
#9- wevtutil
#10- tr
#11- vi commands
#12- curl
#13- uniq
#14- join
#15- sdiff
#16- base64
#17- Regular expressions