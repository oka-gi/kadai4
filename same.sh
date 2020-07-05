#!/bin/bash

if [ $# -ne 2 ]; then
	echo "自然数を入れて"
	exit
fi

tmp1=$1
tmp2=$2

gcd(){
	while [ $tmp1 -ne $tmp2 ]
	do
		if [ $tmp1 -gt $tmp2 ]; then
			tmp1=$(( tmp1-tmp2 ))
		else
			tmp2=$(( tmp2-tmp1 ))
		fi
	done
	echo "最大公約数は：$tmp1"
}

gcd $1 $2



