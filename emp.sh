#!/bin/bash -x
MAXHRS=40
IS_FULL_TIME=1
IS_PART_TIME=2
NUM_OF_WORKING_DAYS=20
totalemphrs=0
RATE=20
totaldays=0
while [ $MAXHRS -gt $totalemphrs -a $totaldays -lt $NUM_OF_WORKING_DAYS ]
do
        ((totalday++))
        random=$((RANDOM%3))
        echo $random
        case $random in
                $IS_FULLTIME) hrs=8;;
                $IS_PART_TIME) hrs=4;;
                 *) hrs=0;;
        esac
        totalemphrs=$(($totalemphrs+$hrs))
done

totalSalary=$(($RATE+$totalemphrs))
echo "total salary is:" $totalSalary

