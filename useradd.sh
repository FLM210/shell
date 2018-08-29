#!/bin/bash
user=()
passwd=()
k=0
l=0
m=0
for i in `cat $1`
do
	      useradd $i
		user[k]=$i
		let k++
done
for j in `cat $2`
do
	passwd[l]=$j
	let l++
done
for as in `cat a.txt`
do
	echo ${passwd[m]} | passwd --stdin ${user[m]}
	echo "${user[m]} ${passwd[m]}" >> c.txt
	let m++
done
