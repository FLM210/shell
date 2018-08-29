#!/bin/bash
change=1
for i in `cat a.txt`
do
	if [ $[change%2] -eq 0 ]
	then
		echo $i |passwd --stdin $tmp
		let change++
	else
		useradd $i
		tmp=$i
		let change++
	fi
done
