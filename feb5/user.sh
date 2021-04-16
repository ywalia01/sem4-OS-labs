read -p "Enter user: " u

if [ "$u" == "$USER" ];then
    echo "Valid User"
else
    echo "Invalid User"
fi