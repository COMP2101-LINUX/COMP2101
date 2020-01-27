#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF


#################
#Task1
################
prompt="enter 3 numbers : "
read -p "$prompt" Usernumber1 Usernumber2 Usernumber3

###############
#Task2
##############

sum=$((Usernumber1 + Usernumber2 + Usernumber3))
product=$((Usernumber1 * Usernumber2 * Usernumber3))

cat << EOF
$Usernumber1 plus $Usernumber2 plus $Usernumber3 is : $sum
$Usernumber1 multiplied by $Usernumber2 multiplied by $Usernumber3 is : $product
EOF



############################
# task as per lab instructions
###############################



input="enter 2 numbers"
read -p "$input" Input1 Input2
addition=$((Input1 + Input2))
difference=$((Input1 - Input2))
multiplication=$((Input1 * Input2))
remainder=$((Input1 % Input2))
dividend2=$((Input1 / Input2))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $Input1/$Input2}")

cat <<EOF
$Input1 plus $Input2 is $addition
$Input1 minus $Input2 is $difference
$Input1 times $Input2 is $multiplication
$Input1 divided by $Input2 is $dividend2, with the remainder of $remainder
  - More precisely, it is $fpdividend
EOF
