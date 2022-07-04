#!/bin/bash -x

TOTAL_WORKING_HRS=100
WORKING_DAY_PER_MONTH=20
WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2
totalWorkingDays=0;
totalEmployeeHrs=0;

function getWorkHrs(){
	empCheck=$1
	case $empCheck in
	$IS_FULL_TIME)
			empHrs=8;
                        ;;
	$IS_PART_TIME)
			empHrs=4;
                        ;;
		*)
		empHrs=0
                 ;;
	esac
	echo $empHrs
}

while (( totalEmployeeHrs<$TOTAL_WORKING_HRS && totalWorkingDays<$WORKING_DAY_PER_MONTH ))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmployeeHrs=$(( $totalEmployeeHrs + $empHrs ))
	dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
	echo daily wages of employee : $dailyWage
done
totalSalaryOfEmployee=$(( $totalEmployeeHrs * $WAGE_PER_HRS ))
echo total salary of Employee : $totalSalaryOfEmployee
echo "Total Working Hours of Employee : " $totalEmployeeHrs
