#!/bin/bash
##working with loops
## while loop
echo "This is a while loop"
i=0
while ((i<5))
do
	echo "$i"
	let i++
done
#####
while ls | grep  -q txt
do
	echo "There is a txt file here: "$(pwd)""
	cd ..
done

## for loop
echo "This is a for loop"
for ((i=0;i<5;i++))
do
	echo "$i"
done

##for  to itarete tru all the parameters that are passed to a shell script
for ARG
do
	echo "Here is a parameter: "$ARG""
done

##For an arbitrary list of values
for VAL in 20 3 dog peach 7 vanilla
do
	echo "Value: "$VAL""
done
##calling other programs
for VAL in $(ls | grep txt) {0..5}
do
	echo $VAL
done





