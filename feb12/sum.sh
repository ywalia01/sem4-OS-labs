#!/bin/bash
read -p "Enter no: " n
echo " "
for ((i=1; i<=$n; i++))
do
    read -p "Enter $i th no: " no
    sum=$((sum + no))
done
echo " "
echo "Sum: $sum"