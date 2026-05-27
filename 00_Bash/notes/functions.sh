#!/bin/bash

# =========================================================
# CSIS 3560 - Bash Functions Reference
# Chapter 2 Practice Notes
# Cybersecurity Ops with Bash
#
# Topics:
# - function declaration
# - calling functions
# - parameters
# - return values
# - command substitution
# - local variables
# - reusable automation
# - cybersecurity examples
# =========================================================


# =========================================================
# [ 1 ] Basic Function
# =========================================================

echo "================================================="
echo "[ 1 ] Basic Function"
echo "================================================="
echo "Purpose:"
echo "- Reuse code"
echo "- Organize scripts"
echo "- Avoid repetition"
echo
echo "Common Uses:"
echo "- repeated checks"
echo "- automation"
echo "- incident response"
echo

hello_world()
{
    echo "Hello from Bash function"
}

hello_world


# =========================================================
# [ 2 ] Function with Parameters
# =========================================================

echo
echo "================================================="
echo "[ 2 ] Function Parameters"
echo "================================================="
echo "Purpose:"
echo "- Pass values into functions"
echo
echo "Special Variables:"
echo "\$1   first parameter"
echo "\$2   second parameter"
echo "\$#   total parameters"
echo "\$@   all parameters"
echo

show_user()
{
    echo "Analyzing user: $1"
}

show_user root
show_user admin


# =========================================================
# [ 3 ] Multiple Parameters
# =========================================================

echo
echo "================================================="
echo "[ 3 ] Multiple Parameters"
echo "================================================="
echo "Purpose:"
echo "- Pass multiple arguments"
echo

check_service()
{
    echo "Service: $1"
    echo "Port: $2"
}

check_service ssh 22
check_service http 80


# =========================================================
# [ 4 ] Function + if Statement
# =========================================================

echo
echo "================================================="
echo "[ 4 ] Function + if"
echo "================================================="
echo "Purpose:"
echo "- Combine logic with reusable code"
echo
echo "Common Uses:"
echo "- connectivity checks"
echo "- file validation"
echo "- service validation"
echo

check_ping()
{
    if ping -c 1 "$1" &> /dev/null
    then
        echo "$1 is reachable"
    else
        echo "$1 is unreachable"
    fi
}

check_ping 8.8.8.8
check_ping 192.168.1.250


# =========================================================
# [ 5 ] Function + grep
# =========================================================

echo
echo "================================================="
echo "[ 5 ] Function + grep"
echo "================================================="
echo "Purpose:"
echo "- Reusable log analysis"
echo
echo "Common Uses:"
echo "- failed login detection"
echo "- malware detection"
echo "- IOC searches"
echo

search_logs()
{
    grep -i "$1" cyberlog.txt
}

# requires cyberlog.txt
# search_logs "Failed"
# search_logs "root"


# =========================================================
# [ 6 ] return"
# =========================================================

echo
echo "================================================="
echo "[ 6 ] return"
echo "================================================="
echo "Purpose:"
echo "- Return exit status"
echo
echo "Important:"
echo "- return is usually:"
echo "    0 = success"
echo "    non-zero = failure"
echo

check_file()
{
    if [ -f "$1" ]
    then
        return 0
    else
        return 1
    fi
}

check_file cyberlog.txt

if [ $? -eq 0 ]
then
    echo "File exists"
else
    echo "File missing"
fi


# =========================================================
# [ 7 ] Command Substitution with Functions
# =========================================================

echo
echo "================================================="
echo "[ 7 ] Function Output"
echo "================================================="
echo "Purpose:"
echo "- Capture function output"
echo
echo "Common Uses:"
echo "- store calculations"
echo "- save command results"
echo

current_user()
{
    whoami
}

USER_NOW=$(current_user)

echo "Logged user: $USER_NOW"


# =========================================================
# [ 8 ] Local Variables
# =========================================================

echo
echo "================================================="
echo "[ 8 ] local Variables"
echo "================================================="
echo "Purpose:"
echo "- Variables visible ONLY inside function"
echo
echo "Common Uses:"
echo "- avoid variable conflicts"
echo "- safer scripting"
echo

demo_local()
{
    local SECRET="internal_value"

    echo "Inside function: $SECRET"
}

demo_local

echo "Outside function: $SECRET"


# =========================================================
# [ 9 ] Function + Loop
# =========================================================

echo
echo "================================================="
echo "[ 9 ] Function + Loop"
echo "================================================="
echo "Purpose:"
echo "- Automate repeated operations"
echo
echo "Common Uses:"
echo "- network scans"
echo "- service checks"
echo "- bulk analysis"
echo

scan_ips()
{
    for IP in "$@"
    do

        ping -c 1 "$IP" &> /dev/null

        if [ $? -eq 0 ]
        then
            echo "$IP reachable"
        else
            echo "$IP unreachable"
        fi

    done
}

scan_ips 8.8.8.8 1.1.1.1 192.168.1.250


# =========================================================
# [ 10 ] Function + case
# =========================================================

echo
echo "================================================="
echo "[ 10 ] Function + case"
echo "================================================="
echo "Purpose:"
echo "- Menu-based scripting"
echo
echo "Common Uses:"
echo "- service management"
echo "- automation menus"
echo

service_info()
{
    case $1 in

        ssh)
            echo "SSH uses port 22"
            ;;

        http)
            echo "HTTP uses port 80"
            ;;

        dns)
            echo "DNS uses port 53"
            ;;

        *)
            echo "Unknown service"
            ;;

    esac
}

service_info ssh
service_info dns


# =========================================================
# [ 11 ] Function + find
# =========================================================

echo
echo "================================================="
echo "[ 11 ] Function + find"
echo "================================================="
echo "Purpose:"
echo "- Reusable file searches"
echo
echo "Common Uses:"
echo "- locate scripts"
echo "- locate logs"
echo "- malware hunting"
echo

find_logs()
{
    find "$1" -type f -name "*.log" 2> /dev/null
}

# example:
# find_logs /var


# =========================================================
# [ 12 ] Function + Arithmetic
# =========================================================

echo
echo "================================================="
echo "[ 12 ] Function + Arithmetic"
echo "================================================="
echo "Purpose:"
echo "- Perform calculations"
echo
echo "Common Uses:"
echo "- counters"
echo "- thresholds"
echo "- statistics"
echo

count_alerts()
{
    local TOTAL

    TOTAL=$(( $1 + $2 ))

    echo "$TOTAL"
}

RESULT=$(count_alerts 10 5)

echo "Total alerts: $RESULT"


# =========================================================
# [ 13 ] Function + File Reading
# =========================================================

echo
echo "================================================="
echo "[ 13 ] Function + Reading Files"
echo "================================================="
echo "Purpose:"
echo "- Reusable file processing"
echo
echo "Common Uses:"
echo "- auth.log analysis"
echo "- IOC lists"
echo "- username processing"
echo

read_log()
{
    while IFS= read -r LINE
    do
        echo "Entry: $LINE"
    done < "$1"
}

# requires file
# read_log cyberlog.txt


# =========================================================
# [ 14 ] Function Exit Status"
# =========================================================

echo
echo "================================================="
echo "[ 14 ] Function Exit Status"
echo "================================================="
echo "Purpose:"
echo "- Functions return status like commands"
echo

test_connection()
{
    ping -c 1 "$1" &> /dev/null
}

test_connection 8.8.8.8

echo "Exit status: $?"


# =========================================================
# [ 15 ] Common Function Workflow
# =========================================================

echo
echo "================================================="
echo "[ 15 ] Common Function Workflow"
echo "================================================="

echo "declare function"
echo "pass parameters"
echo "run commands"
echo "return output/status"
echo "reuse function"


# =========================================================
# [ 16 ] Common Cybersecurity Uses
# =========================================================

echo
echo "================================================="
echo "[ 16 ] Common Cybersecurity Uses"
echo "================================================="

echo "- reusable log analysis"
echo "- ping sweep automation"
echo "- malware searches"
echo "- suspicious IP detection"
echo "- repetitive monitoring"
echo "- service validation"
echo "- incident response automation"


# =========================================================
# [ 17 ] Important Notes"
# =========================================================

echo
echo "================================================="
echo "[ 17 ] Important Notes"
echo "================================================="

echo "Functions improve organization"
echo "Functions avoid repeated code"
echo "Use local variables when possible"
echo "Functions can receive parameters"
echo "Functions return exit status"
echo "Functions can output values"


# =========================================================
# [ 18 ] Example Mini SOC Workflow
# =========================================================

echo
echo "================================================="
echo "[ 18 ] Mini SOC Workflow"
echo "================================================="

detect_failed_logins()
{
    grep -c "Failed password" cyberlog.txt 2> /dev/null
}

FAILED_COUNT=$(detect_failed_logins)

echo "Failed logins detected: $FAILED_COUNT"


# =========================================================
# END
# =========================================================