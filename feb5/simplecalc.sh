bash ./script.sh
echo "********Arithmetic Operations********"
read -p "Enter 2 numbers(space seperated): " N1 N2
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
read -p "Enter choice: " CH

if [ "$CH" == "1" ];then
    RES=`expr $N1 + $N2`
    echo "$N1 + $N2 = $RES"
elif [ "$CH" == "2" ];then
    RES=`expr $N1 - $N2`
    echo "$N1 - $N2 = $RES"
elif [ "$CH" == "3" ];then
    RES=`expr $N1 \* $N2`
    echo "$N1 * $N2 = $RES"
elif [ "$CH" == "4" ];then
    RES=`expr $N1 / $N2`
    echo "$N1 / $N2 = $RES"
elif [ "$CH" == "5" ];then
    RES=`expr $N1 % $N2`
    echo "$N1 % $N2 = $RES"
else
    echo "Error! Invalid request"
fi