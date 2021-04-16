echo " "
# read -p "Enter file name to be renamed: " FILE_NAME
if [ -f "$1" ];then
    read -p "Are you sure you want to rename $1 (y/n)?" CONF
    case "$CONF" in
        [yY] | [yY][eE][sS])
            mv $1 $2
            echo "$1 successfully renamed to $2"
            ;;
        [nN] | [nN][oO])
            echo "Process terminated"
            ;;
        *)
            echo "Please enter y/yes or n/no"
            ;;
    esac
else
    echo "'$1' not found"
fi
echo " "