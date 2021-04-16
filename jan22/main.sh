bash ./script.sh
echo "********SCRIPTS********"
echo "1. Swap two numbers"
echo "2. Delete file by name"
echo "3. Add text to file"
echo "4. TBD"
read -p "Enter choice: " CH

if [ "$CH" == "1" ];then
    bash ./swap2nos.sh
elif [ "$CH" == "2" ];then
    bash ./deletefile.sh
elif [ "$CH" == "3" ];then
    bash ./addtofile.sh
else
    echo "Error! Invalid request"
fi