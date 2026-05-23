#!/bin/bash
##working with functions
function myfun()
{
	#body
	echo "Inside the function body!"
}
#calling the function
myfun

##using arguments
echo "saving parameters before to call the function" 
function myfunc1()
{
	echo "This is the script's name: "$0""
	echo "Parameter 1: $param1"
	echo "Parameter 2: $param2"
	echo "Parameter 3: $param3"
	echo "Number of parameters: $num_params"
}
#option 1: save script's parameters before to call the function
param1=$1
param2=$2
param3=$3
num_params=$#
myfunc1 Giova
#option 2: passing parameters directly to the function
echo "Passing parameters directly to the function"
function myfunc2()
{
	echo "Script name: $0"
	echo "Parameter1: $1"
	echo "Parameter2: $2"
	echo "Parameter3: $3"
	echo "Number of Parameters: $#"
}
myfunc2 $1 $2 $3
##example
function scan_target()
{
	echo "Scaning IP: $1"
	echo "Scaning port: $2"
}
scan_target $1 $2
##returning values
##option 1: define a global variable
function calculate1()
{
	sum=$(($1+$2))
}
sum=0
calculate1 $1 $2
echo "$1 + $2 = $sum"
##option 2: print to stdout
echo "Print to stdout"
function calculate2()
{
	echo $(($1 + $2))
}
result=$(calculate2 3 5)
echo $result
