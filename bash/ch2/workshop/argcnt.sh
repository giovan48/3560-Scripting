#!/bin/bash
##workshop ch2.4
clear
#1-how many arguments are supplied to the script
#2-count and display args
#3-display even args
echo "There are $# arguments"
c=1
for arg
do
	rem=$(($c%2))
	if ((rem == 0 ))
	then
		echo "arg$c: $arg"
	fi
	let c++
done
