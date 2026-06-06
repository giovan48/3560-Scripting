#!/bin/bash

echo "========================="
echo "CUT | FILE | HEAD PRACTICE"
echo "========================="

echo
echo "Preparing practice files..."

# Sample files
echo "John:IT:25" > users.txt
echo "Maria:Cyber:30" >> users.txt
echo "Alex:Network:28" >> users.txt

touch empty.txt
echo "Hello Bash!" > message.txt

mkdir practice_dir

echo -e "line1\nline2\nline3\nline4\nline5\nline6\nline7\nline8\nline9\nline10\nline11" > longfile.txt


##################################
# CUT
##################################

echo
echo "===== EXERCISE 1 — cut -f ====="
echo "Show ONLY names from users.txt"
echo "Example:"
echo "cut -d ':' -f1 users.txt"

echo
echo "===== EXERCISE 2 — cut -f ====="
echo "Show ONLY department column"
echo "Example:"
echo "cut -d ':' -f2 users.txt"

echo
echo "===== EXERCISE 3 — cut -c ====="
echo "Extract first 5 characters from message.txt"
echo "Example:"
echo "cut -c1-5 message.txt"


##################################
# FILE
##################################

echo
echo "===== EXERCISE 4 — file ====="
echo "Check file type"
echo "Example:"
echo "file users.txt"

echo
echo "===== EXERCISE 5 — file -z ====="
echo "Compress and inspect file"

tar -czf archive.tar.gz users.txt

echo "Example:"
echo "file -z archive.tar.gz"

echo
echo "===== EXERCISE 6 — file -f ====="
echo "Create list of files"

echo "users.txt" > list.txt
echo "archive.tar.gz" >> list.txt
echo "practice_dir" >> list.txt

echo "Example:"
echo "file -f list.txt"


##################################
# HEAD
##################################

echo
echo "===== EXERCISE 7 — head ====="
echo "Display first 10 lines"
echo "Example:"
echo "head longfile.txt"

echo
echo "===== EXERCISE 8 — head -n ====="
echo "Display first 3 lines"
echo "Example:"
echo "head -n 3 longfile.txt"

echo
echo "===== EXERCISE 9 — head -c ====="
echo "Display first 20 bytes"
echo "Example:"
echo "head -c 20 longfile.txt"


echo
echo "Files created:"
echo "users.txt"
echo "message.txt"
echo "longfile.txt"
echo "archive.tar.gz"
echo "list.txt"

echo
echo "Run the examples manually."
