read -p "Enter a number: " NUM

if [ $NUM -eq 0 ];then
    echo "Zero"
elif [ $NUM -lt 0 ];then
    echo "It is -VE"
else
    echo "It is +VE"
fi