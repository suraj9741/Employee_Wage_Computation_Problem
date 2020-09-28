##!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
Wage_per_hour=20
Day_hour=8
Part_time=4
Total_Wage=1
day=1
a=$((RANDOM%3))
case $a in
	1)
		echo "Present Full time employee"
		empHrs=8
	;;
	2)
		echo "Present Part time employee"
		empHrs=4
	;;
	*)
		echo "Absent"
		empHrs=0
	;;
esac
	Total_Wage=$(($empHrs*$Wage_per_hour))
	echo "Total Wage of day $Total_Wage"
