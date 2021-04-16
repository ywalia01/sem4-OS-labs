echo "********Directory Operations********"
echo "1. Create Directory"
echo "2. Delete Directory"
echo "3. Rename Directory"
read -p "Enter choice: " CH

case "$CH" in
    1)
        read -p "Enter new dir name: " name
        mkdir $name
        echo "$name has been successfully created"
        ;;
    2)
        read -p "Enter dir name you want deleted: " name
        rmdir $name
        echo "$name has been successfully deleted"
        ;;
    3)
        read -p "Enter dir name you want renamed: " name
        read -p "Enter new name: " new_name
        mv $name $new_name
        ;;
    *)
        echo "Error! Invalid request"
        ;;
esac