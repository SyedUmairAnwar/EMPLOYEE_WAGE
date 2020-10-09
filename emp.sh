#!/bin/bash -x
check=$(( RANDOM%3 ))
case $check in
	1))
        ratehour=10
        hour=4
        salary=$(($ratehour*$hour));;

	2))
        ratehour=20
        hour=8
        salary=$(($ratehour*$hour));;
	*)
        salary=0;;
esac
echo "the salary is:" $salary


