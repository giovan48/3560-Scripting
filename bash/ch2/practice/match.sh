#!/bin/bash
##Pattern matching
clear
echo "This is pattern matching - wildcard"
echo "Match everything"
ls -l *
echo ""
echo "Match finishing in .txt"
ls -l *.txt
echo ""
echo "Match files starting with se "
ls -l se*
echo ""
echo "Match files ending with .sh"
ls -l *.sh
echo ""
echo "Match files containing log"
ls -l *log*
echo ""
echo "Match only one character ?"
ls -l script?.sh
echo ""
echo "using x[abc]y - match one character"
ls -l script[0-9].sh
echo ""
echo "using other class"
echo "[:alnum:]"
ls -l *[:alnum:]*
echo ""
echo "*[:alpha:]*"
ls -l *[:alpha:]*
echo ""
echo "Match using lowercase"
ls -l *[:lower:]*
