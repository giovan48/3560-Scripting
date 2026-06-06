#!/bin/bash

# =========================================================
# CSIS 3560 - Bash Conditional & Operators Reference
# Chapter 2 Practice Notes
# Focus:
# - conditionals
# - tests
# - arithmetic
# - pipelines
# - redirection
# - command success/failure
# =========================================================


echo "================================================="
echo "[ 1 ] if command"
echo "================================================="
echo "Purpose:"
echo "- Check if a command succeeds"
echo "- Linux commands return:"
echo "    0 = success"
echo "    non-zero = failure"
echo
echo "Common Uses:"
echo "- grep searches"
echo "- ping checks"
echo "- cd validation"
echo "- cybersecurity log checks"
echo

# grep succeeds if match found
if grep -q "Failed password" cyberlog.txt
then
    echo "Failed login detected"
fi

# ping succeeds if host reachable
if ping -c 1 8.8.8.8 &> /dev/null
then
    echo "Internet reachable"
fi



echo
echo "================================================="
echo "[ 2 ] [ ] classic test"
echo "================================================="
echo "Purpose:"
echo "- File tests"
echo "- String comparisons"
echo "- Numeric comparisons"
echo "- POSIX compatible"
echo
echo "Common Uses:"
echo "- check files/directories"
echo "- compare variables"
echo "- basic scripting"
echo

FILE="cyberlog.txt"

# file exists
if [ -f "$FILE" ]
then
    echo "File exists"
fi

# directory exists
if [ -d "/tmp" ]
then
    echo "/tmp exists"
fi

USER1="root"

# string comparison
if [ "$USER1" = "root" ]
then
    echo "Root user detected"
fi

COUNT=10

# numeric comparison
if [ "$COUNT" -gt 5 ]
then
    echo "Count greater than 5"
fi

echo
echo "Common Numeric Operators:"
echo "-eq  equal"
echo "-ne  not equal"
echo "-gt  greater than"
echo "-lt  less than"
echo "-ge  greater/equal"
echo "-le  less/equal"



echo
echo "================================================="
echo "[ 3 ] [[ ]] modern bash test"
echo "================================================="
echo "Purpose:"
echo "- Modern Bash conditionals"
echo "- Regex matching"
echo "- Wildcard matching"
echo "- Safer variable handling"
echo
echo "Common Uses:"
echo "- IP validation"
echo "- filename patterns"
echo "- regex filtering"
echo

IP="192.168.1.55"

# regex matching
if [[ "$IP" =~ ^192\.168\. ]]
then
    echo "Internal network detected"
fi

FILE2="report.log"

# wildcard matching
if [[ "$FILE2" == *.log ]]
then
    echo "Log file detected"
fi

USERNAME="admin"

# OR condition
if [[ "$USERNAME" == "root" || "$USERNAME" == "admin" ]]
then
    echo "Privileged account"
fi

echo
echo "Useful Operators:"
echo "==     equal"
echo "!=     not equal"
echo "=~     regex match"
echo "&&     logical AND"
echo "||     logical OR"



echo
echo "================================================="
echo "[ 4 ] (( )) arithmetic evaluation"
echo "================================================="
echo "Purpose:"
echo "- Numeric calculations"
echo "- Counters"
echo "- Arithmetic conditions"
echo
echo "Common Uses:"
echo "- failed login counters"
echo "- loops"
echo "- monitoring thresholds"
echo

FAILURES=7

if (( FAILURES > 5 ))
then
    echo "Too many failures"
fi

COUNT2=0

(( COUNT2++ ))

echo "Counter = $COUNT2"

echo
echo "Arithmetic Operators:"
echo "+   addition"
echo "-   subtraction"
echo "*   multiplication"
echo "/   division"
echo "++  increment"
echo "--  decrement"



echo
echo "================================================="
echo "[ 5 ] \$(( )) arithmetic expansion"
echo "================================================="
echo "Purpose:"
echo "- Store arithmetic result"
echo "- Print math calculations"
echo

TOTAL=$(( FAILURES + 20 ))

echo "Total alerts = $TOTAL"



echo
echo "================================================="
echo "[ 6 ] \$( ) command substitution"
echo "================================================="
echo "Purpose:"
echo "- Save command output into variable"
echo
echo "Common Uses:"
echo "- whoami"
echo "- pwd"
echo "- grep results"
echo "- date/time"
echo

CURRENT_USER=$(whoami)

echo "Current user: $CURRENT_USER"

CURRENT_DATE=$(date)

echo "Current date: $CURRENT_DATE"



echo
echo "================================================="
echo "[ 7 ] ( ) subshell"
echo "================================================="
echo "Purpose:"
echo "- Run commands in separate shell"
echo "- Changes stay temporary"
echo

(
cd /tmp
echo "Inside subshell:"
pwd
)

echo "Outside subshell:"
pwd



echo
echo "================================================="
echo "[ 8 ] { } command grouping"
echo "================================================="
echo "Purpose:"
echo "- Group commands together"
echo "- Run in current shell"
echo

{
echo "Date:"
date
echo "User:"
whoami
}



echo
echo "================================================="
echo "[ 9 ] case statement"
echo "================================================="
echo "Purpose:"
echo "- Multiple conditions"
echo "- Cleaner than many if statements"
echo
echo "Common Uses:"
echo "- menus"
echo "- service selection"
echo "- option parsing"
echo

SERVICE="ssh"

case $SERVICE in

    ssh)
        echo "SSH service selected"
        ;;

    nginx)
        echo "Nginx service selected"
        ;;

    mysql)
        echo "MySQL service selected"
        ;;

    *)
        echo "Unknown service"
        ;;

esac



echo
echo "================================================="
echo "[ 10 ] && logical AND"
echo "================================================="
echo "Purpose:"
echo "- Run next command ONLY if first succeeds"
echo

mkdir testfolder && echo "Folder created"



echo
echo "================================================="
echo "[ 11 ] || logical OR"
echo "================================================="
echo "Purpose:"
echo "- Run next command if first fails"
echo

cd fakefolder || echo "Directory not found"



echo
echo "================================================="
echo "[ 12 ] Pipeline |"
echo "================================================="
echo "Purpose:"
echo "- Send output of command1 into command2"
echo
echo "Common Uses:"
echo "- grep filtering"
echo "- sort and uniq"
echo "- cybersecurity log analysis"
echo

cat cyberlog.txt | grep "Failed"



echo
echo "================================================="
echo "[ 13 ] Output Redirection >"
echo "================================================="
echo "Purpose:"
echo "- Overwrite file output"
echo

echo "First line" > output.txt



echo
echo "================================================="
echo "[ 14 ] Append Redirection >>"
echo "================================================="
echo "Purpose:"
echo "- Append output to existing file"
echo

echo "Second line" >> output.txt



echo
echo "================================================="
echo "[ 15 ] Error Redirection 2>"
echo "================================================="
echo "Purpose:"
echo "- Redirect only errors"
echo

ls fakefile 2> errors.txt



echo
echo "================================================="
echo "[ 16 ] Redirect stdout + stderr &>"
echo "================================================="
echo "Purpose:"
echo "- Redirect normal output and errors"
echo

ls fakefile &> alloutput.txt



echo
echo "================================================="
echo "[ 17 ] /dev/null"
echo "================================================="
echo "Purpose:"
echo "- Suppress unwanted output"
echo
echo "Common Uses:"
echo "- hide errors"
echo "- silent checks"
echo "- automation scripts"
echo

ping -c 1 8.8.8.8 &> /dev/null

echo "Ping executed silently"



echo
echo "================================================="
echo "[ 18 ] Common File Tests"
echo "================================================="

echo "-f  regular file"
echo "-d  directory"
echo "-r  readable"
echo "-w  writable"
echo "-x  executable"
echo "-s  file not empty"

if [ -x "./myscript.sh" ]
then
    echo "Script executable"
fi



echo
echo "================================================="
echo "[ 19 ] Common Cybersecurity Uses"
echo "================================================="

echo "Examples:"
echo "- detect failed logins"
echo "- validate suspicious IPs"
echo "- count alerts"
echo "- monitor services"
echo "- check malware filenames"
echo "- automate incident response"

if grep -q "0x90" cyberlog.txt
then
    echo "Possible shellcode pattern detected"
fi
