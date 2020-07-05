#!/bin/bash

result="/tmp/$$-result"
ans="/tmp/$$-ans"

ERROR_EXIT(){
	echo $1
	rm /tmp/$$-*
}

if [ $1 = $2 ]; then
	echo  "同じ数字の入力"
else
	echo "ok"
fi

./same.sh
if [ $? -ne 0 ]; then
	echo  "空欄"
else 
        echo "ok"
fi

