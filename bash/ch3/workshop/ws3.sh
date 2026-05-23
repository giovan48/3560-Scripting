#!/bin/bash
#Exercise 3
# Start digit - anything - end digit
grep -E -n '^[0-9].*[0-9]$' digitlog.txt 
