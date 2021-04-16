read -p "Enter marks of student: " n

if [ $n -gt 70 ];then
    echo "Grade A"
elif [ $n -gt 60 ] && [ $n -lt 70 ];then
    echo "Grade B"
else
    echo "Fail"
fi