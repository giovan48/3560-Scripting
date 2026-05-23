#!/bin/bash
#Exercise 1
#Matching floating-point numbers
clear
echo "'*'zero or more digits each side"
grep -E -n '[0-9]*\.[0-9]*' floatlog.txt
echo "------------------"
echo "'+'At least one digit in each side"
grep -E -n '[0-9]+\.[0-9]+' floatlog.txt
