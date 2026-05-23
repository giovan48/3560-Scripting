#!/bin/bash
##Workshop ch2.1

clear
echo "Operating System information"
for ((i=0;i<1;i++))
do
	echo "----------------------------"
done
echo "Kernel info: $(uname -s)"
echo "hostname: $(uname -n)"
echo "Kernel Release: $(uname -r)"
echo "Kernel Version: $(uname -v)"
echo "Machine Type: $(uname -m)"
echo "Full uname Output: $(uname -a)"
echo ""
echo ""
uname --help
