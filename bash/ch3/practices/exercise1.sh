#!/bin/bash

echo "========================="
echo "Task1"
echo "Lines starting with May,"
echo "containing 192.168.x.x"
echo "and ending with failed"
echo "========================="

grep -E -n '^May.*192\.168\..*failed$' cyberlog1.txt

echo
echo "========================="
echo "Task2"
echo "Find lines containing"
echo "root OR admin OR guest"
echo "========================="

grep -E -n '(root|admin|guest)' cyberlog1.txt

echo
echo "========================="
echo "Task3"
echo "Find lines beginning"
echo "with an IP address"
echo "========================="

grep -E -n '^([0-9]{1,3}\.){3}[0-9]{1,3}' cyberlog1.txt

echo
echo "========================="
echo "Task4"
echo "Find repeated 0x90"
echo "patterns 3 or more times"
echo "========================="

grep -E -n '(0x90 ){3,}' cyberlog1.txt

echo
echo "========================="
echo "Task5"
echo "Find repeated usernames"
echo "using back references"
echo "========================="

grep -E -n '(admin|guest|root) -> \1' cyberlog1.txt

echo
echo "========================="
echo "Task6"
echo "Find lines ending"
echo "with accepted"
echo "========================="

grep -E -n 'accepted$' cyberlog1.txt

echo
echo "========================="
echo "Task7"
echo "Find hexadecimal values"
echo "starting with 0x"
echo "========================="

grep -E -n '0x[0-9]+' cyberlog1.txt

echo
echo "========================="
echo "Task8"
echo "Find lines containing"
echo "failed OR accepted"
echo "========================="

grep -E -n '(failed|accepted)' cyberlog1.txt

echo
echo "========================="
echo "Task9"
echo "Find lines starting"
echo "with an IP from"
echo "192.168 network"
echo "========================="

grep -E -n '^192\.168\.' cyberlog1.txt

echo
echo "========================="
echo "Task10"
echo "Find lines containing"
echo "one or more digits"
echo "========================="

grep -E -n '[0-9]+' cyberlog1.txt

echo
echo "Regex investigation completed."
