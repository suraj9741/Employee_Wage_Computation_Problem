##!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
a=$((RANDOM%2))
Wage_per_hour=20
Day_hour=8
Total_Wage=1
if [ $a -eq 0 ]
then
	echo "Present"
	Total_Wage=$(($Wage_per_hour*$Day_hour))
	echo "Total Wage : " $Total_Wage
else
	echo "Absent"
	Total_Wage=0
	 echo "Total Wage : " $Total_Wage
fi
