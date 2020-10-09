#!/bin/bash -x
check=$(( RANDOM%3 ))
if [ $check -eq 1 ]
then
        ratehour=10
        hour=4
        salary=$(($ratehour*$hour))
elif [ $check -eq 2 ]
then
        ratehour=20
        hour=8
        salary=$(($ratehour*$hour))
else
        salary=0
fi
echo "the salary is:" $salary

