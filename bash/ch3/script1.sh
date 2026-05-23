#!/bin/bash
#chapter 3 in class practice - RegEx
##grep -- searches the content of the files for a given patter and 
##prints any line where the pattern is matched

clear
cat cyberlog.txt
echo "---------------------------"
#echo "------Regex------"
#echo "-----Using grep------"
#echo "without options"
#grep 'Failed' cyberlog.txt		#wo options
#echo "grep -c to count matched lines"
#grep -c 'failed' cyberlog.txt		#-c count # of lines with that pattern
#echo "-i to ignore case sensitive"
#grep -c -i 'failed' cyberlog.txt	#-i wo case sensitive
#echo "-f to read pattern from a file"
#grep -f pattern1.txt cyberlog.txt
#echo "Read from a file and count"
#grep -c -f pattern1.txt cyberlog.txt
#grep -l '192.168' cyberlog.txt
#grep -n '192.168' cyberlog.txt
#echo "special greps"
#echo "-E enable extended regular expressions"
#echo "-P enable the Perl regular expressions engine"
#echo "-R -r recursively search subdirectories"
#grep -R -i -l 'password' /home/gal02/00_Bash/
#grep -n '50422\|42211' cyberlog.txt
#grep -E -c '50422|42211' cyberlog.txt
#egrep '50422|42211' cyberlog.txt
#echo "-----Regex Metacharacters---"
#echo " '.' Metacharacter"
#grep 'r..t' cyberlog.txt
#echo "---"
#grep -n 'r.t' cyberlog.txt
#echo "---"
#grep  -n 's..d' cyberlog.txt
#echo "---"
#grep -n '192.168' cyberlog.txt
#echo "---"
#grep -n '192\.168' cyberlog.txt
#echo "---"
#grep -n '192.168' cyberlog.txt

##Exercises for '.' metacharacter
#grep 'r..t' cyberlog.txt
#grep 's..d' cyberlog.txt
#grep '192.168' cyberlog.txt
#grep '192\.168' cyberlog.txt
#grep 'Failed .assword' cyberlog.txt
#grep -n 'Failed........................192' cyberlog.txt
#echo "--------------------"
#exercises  for '?' metacharacter
#grep  -E 'r.?t' cyberlog.txt
#grep -E 'passwords?' cyberlog.txt 
#grep -E '5.?' cyberlog.txt
#grep -E 'services?' cyberlog.txt
#grep -E 'admii?n' cyberlog.txt
#grep -E 'F.*d' cyberlog.txt 
#grep -E '(admin|root)' cyberlog.txt 
#grep -E '(root|admin|guest)' cyberlog.txt 
#grep -E '(Accepted|Failed) password' cyberlog.txt 
#grep -E 'Failed password for (root|admin)' cyberlog.txt 
grep -E 'sshd|sudo|nginx' cyberlog.txt 
grep -E 'Failed password for (admin|guest|test)' cyberlog.txt
