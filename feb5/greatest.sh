read -p "Enter 3 numbers(Space seperated):" x y z

if [ $x -gt $y ] && [ $x -gt $z ]; then
    echo "$x is the greatest"
elif [ $y -gt $z ] && [ $y -gt $x ]; then
    echo "$y is the greatest"
elif [ $z -gt $y ] && [ $z -gt $x ]; then
    echo "$z is the greatest"
fi