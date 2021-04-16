echo " "
read -p "Enter file name to be deleted: " FILE_NAME

if [ -f "$FILE_NAME" ];then
    read -p "Are you sure you want to delete $FILE_NAME (y/n)?" CONF
    case "$CONF" in
        [yY] | [yY][eE][sS])
            rm $FILE_NAME
            echo "'$FILE_NAME' has been deleted"
            ;;
        [nN] | [nN][oO])
            echo "Deletion terminated"
            ;;
        *)
            echo "Please enter y/yes or n/no"
            ;;
    esac
else
    echo "'$FILE_NAME' not found"
fi
echo " "