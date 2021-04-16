a=0
b=1
echo "Fibonacci series: "
   
for (( i=0; i<$1; i++ )) 
do
    echo "  $a "
    temp=$(( a + b )) 
    a=$b 
    b=$temp 
done