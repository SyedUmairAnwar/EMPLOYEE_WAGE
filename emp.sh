#!/bin/bash -x
isfulltime=1
isparttime=2
emprateperhour=20
noofworkingdays=20
maxhoursinmonth=20
totalemphrs=0
totalworkingdays=0

function getworkinghours(){
 case $1 in
        $isfulltime) emphrs=8;;
        $isparttime) emphrs=4;;
        *) emphrs=0;;
 esac
echo $emphrs
}
function getempwage(){
        echo $(($1*$emprateperhour))
}


while [[ $totalemphrs -lt $maxhoursinmonth && $totalworkingdays -lt $noofworkingdays ]]
do
        ((totalworkingdays++))
        emphrs=$( getworkinghours $((RANDOM%3)) )
        totalemphrs=$(($emphrs + $totalemphrs))
        dailywages[$totalworkingdays]=$( getempwage $emphrs )
done
totalsalary=$(($emprateperhour*$totalemphrs))
echo "total salary is $totalsalary"
echo ${dailywages[@]}
