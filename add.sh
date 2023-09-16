read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Calculate the sum of the numbers
sum=$((num1 + num2))

# Check if the sum is greater than 70
if [ "$sum" -gt 70 ]; then
  echo "Pass"
else
  echo "Fail"
fi