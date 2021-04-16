read -p "Enter a number: " n
sd=0
rev=""
on=$n

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${sd} )
done
echo  "$on in reverse order: $rev"



# for [ $n -gt 0 ]
# do
#     sd=$(( $n % 10 )) 
#     n=$(( $n / 10 ))  
#     rev=$( echo ${rev}${sd} ) 
# done
 
# echo "$on in reverse order: $rev"