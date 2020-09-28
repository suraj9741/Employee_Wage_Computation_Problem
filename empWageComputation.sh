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
declare -A PA
while (($(($day<21))&&$(($hours<=100))))
do
	a=$((RANDOM%3))
	case $a in
		1)
			empHrs=8
			P="Present"
		;;
		2)
			empHrs=4
			P="Present"
		;;
		*)
			empHrs=0
			P="Absent "
		;;
	esac
		empHrstemp[$((day-1))]=$empHrs
		PA[$((day-1))]=$P
		hours=$((hours+empHrs))
		Total_Wage=$(($empHrs*$Wage_per_hour))
		Total_Month_Wage=$((Total_Month_Wage+Total_Wage))
		Month_Wage[$((day-1))]=$Total_Month_Wage
	day=$((day+1))
done
echo "Total Month Wages : $Total_Month_Wage"
echo "Total hours : $hours"
echo "Day           Present/Absent           Work Hours       Total Month Wage"
for((i=0;i<${#Month_Wage[@]};i++))
do
	echo "$((i+1))               ${PA[$i]}                   ${empHrstemp[$i]}                   ${Month_Wage[$i]}"
done

