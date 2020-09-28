##!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
a=$((RANDOM%3))
Wage_per_hour=20
Total_Month_Wage=0
Day_hour=8
Part_time=4
Total_Wage=1
day=1
hours=0
while (($(($day<21))&&$(($hours<=100))))
do
	a=$((RANDOM%3))
	case $a in
		1)
			empHrs=8
		;;
		2)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
		hours=$((hours+empHrs))
		Total_Wage=$(($empHrs*$Wage_per_hour))
		Total_Month_Wage=$((Total_Month_Wage+Total_Wage))
	day=$((day+1))
done
echo "Total Month Wages : $Total_Month_Wage"
echo "Total hours : $hours"
