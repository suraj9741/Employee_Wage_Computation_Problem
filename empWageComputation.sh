##!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
a=$((RANDOM%3))
Wage_per_hour=20
Day_hour=8
Part_time=4
Total_Wage=1
if [ $a -eq 0 ]
then
	echo "Present Full time employee"
	Total_Wage=$(($Wage_per_hour*$Day_hour))
	echo "Total Wage : " $Total_Wage
elif [ $a -eq 1 ]
then
	echo "Present Part time employee"
        Total_Wage=$(($Wage_per_hour*$Part_time))
        echo "Total Wage : " $Total_Wage

else
	echo "Absent"
	Total_Wage=0
	 echo "Total Wage : " $Total_Wage
fi
