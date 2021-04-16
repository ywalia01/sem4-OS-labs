#!/bin/bash
i=1
echo " "
echo "Current directory:" $PWD

echo "1. List contents only in current directory"
echo "2. Current directory recursive tree structure"
read -p "Enter choice: " CH

case "$CH" in
    1)
        echo "  Contents: "
        for file in * ;do
            echo "      $i $file"
            i=$((i + 1))
        done
        ;;
    2)
        tree -a
        ;;
    *)
        echo "Error! Invalid request"
        ;;
esac

# if [ "$CH" == "1" ];then
#     echo "  Contents: "
#     for file in * 
#     do
#         echo "      $i $file"
#         i=$((i + 1))
#     done

# elif [ "$CH" == "2" ];then
#     tree -a
# else
#     echo "Error! Invalid request"
# fi