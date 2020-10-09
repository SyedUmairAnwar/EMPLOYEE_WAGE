#!/bin/bash -x

isfulltime=1
chech=$((RANDOM%2))
if [ $chech -eq $isfulltime ]
then
        rateperhour=20
        hrs=8
        salary=$(($rateperhour*$hrs))
else
        salary=0
fi
echo "your one day salary is" $salary
