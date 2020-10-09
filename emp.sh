#!/bin/bash -x
isfulltime=1
isparttime=2
numOfWorkingDays=20
totalSalary=0
rate=20
for ((day=1;day<=$numOfWorkingDays;day++))
do
        random=$((RANDOM%3))
        echo $random
        case $random in
                $isfulltime) hrs=8;;
                $isparttime) hrs=4;;
                 *) hrs=0;;
        esac
salary=$(($rate*$hrs))
totalSalary=$(($salary+$totalSalary))
echo "total salary is:" $totalSalary
done


