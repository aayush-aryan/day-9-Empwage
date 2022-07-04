#!/bin/bash -x

WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2
empCheck=$((RANDOM%3))
if [ $IS_FULL_TIME -eq $empCheck ]
then
       empHrs=8
	echo FullTime Employee
elif [ $IS_PART_TIME -eq $empCheck ]
then
       empHrs=4
	echo PartTime Employee
else
		 empHrs=0
	echo employee is absent
fi
dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
echo daily salary of emploee : $dailyWage
