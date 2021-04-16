#!/bin/bash
i=0
a[$i]=0; b[$i]=0; g[$i]=0; w[$i]=0;

echo "Enter Number of Processes:"
read n

echo "Enter Burst Time:"
for (( i=0; i<n; i++ ))
do
read b[$i]
done

echo "Enter Arrival Time:"
for (( i=0; i<n; i++ ))
do
read a[$i]
done

g[0]=0
for (( i=0; i<n; i++ ))
do
((w[i]=g[i]-a[i]))
((t[i]=g[i+1]-a[i]))
((awt=awt+w[i]))
((at=at+t[i]))
done

((awt=awt/n))
((at=at/n))
echo " The waiting time is ${w[*]}"
echo " The turnaround time is ${t[*]}"
echo " The Average waiting time is $awt"
echo " The Average Turnaround time is $at"