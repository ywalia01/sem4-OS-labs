echo " "
read -p "Enter 2 numbers(space seperated): " FIRST SECOND
temp=$FIRST 
FIRST=$SECOND 
SECOND=$temp 
echo "After swapping: "
echo "First: $FIRST, Second: $SECOND"
echo " "