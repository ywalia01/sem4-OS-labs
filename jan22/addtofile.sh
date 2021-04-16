echo " "
read -p "Enter file name: " FILE_NAME

if [ -f "$FILE_NAME" ];then
    read -p "Enter text: " TEXT
    echo "$TEXT" >> "$FILE_NAME"
    echo "Your text has been appended to $FILE_NAME"
else
    echo "Error! File not found"
fi
echo " "