read -p "Enter 2 numbers(space seperated): " N1 N2

# n=7
# m=5

for ((i=1, pow=N1; i<N2; i++)); do ((pow *= N1)); done
echo $pow

echo "$N1^$N2" | bc  # just to verify the answer