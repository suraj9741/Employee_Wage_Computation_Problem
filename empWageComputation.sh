#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
a=$((RANDOM%2))
if [ $a -eq 0 ]
then
	echo "Present"
else
	echo "Absent"
fi
