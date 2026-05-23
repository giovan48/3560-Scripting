#!/bin/bash

echo "==============================="
echo "Task 1 - Suspicious .ru EXE URLs"
echo "==============================="
grep -E -n 'http://.*\.ru.*\.exe$' cyberlog3.txt

echo
echo "==============================="
echo "Task 2 - Base64-looking Strings"
echo "==============================="
grep -E -n '\b[A-Za-z0-9+/]{11,}={0,2}\b' cyberlog3.txt

echo
echo "==============================="
echo "Task 3 - Repeated MD5 Hash"
echo "==============================="
grep -E -n '([0-9a-fA-F]{1,}) \1' cyberlog3.txt

echo
echo "========================================"
echo "Task 4 - Five or More Hexadecimal Bytes"
echo "========================================"
grep -E -n '( 0x[0-9a-fA-F][0-9a-fA-F]){5,}' cyberlog3.txt

echo
echo "===================================="
echo "Task 5 - Service Name with PID"
echo "===================================="
grep -E -n '^[a-z]+\[[0-9]{1,}\]:' cyberlog3.txt
