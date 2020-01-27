#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
It's Rolling...............................................................Here we get: $(( RANDOM % 6 + 1))
"
######
#Task
######

prompt="enter your first name :  "
read -p "$prompt" Firstname

echo "
It's Rolling .............................................................Here we get : $((RANDOM % 6 + ${#Firstname}))
"




############################################
# this script rolls a pair of six-sided dice
############################################

echo "
Rolling in progress......................................................the pair is: $(( RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1))
"

#########################################
# this script rolls a 5 six-sided dice
#########################################

echo "
Our Rolling numbers are........$(( RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1))
"
######################################
# this script rolls one 20-sided dice
######################################

echo "
Rolling number.........................................................$(( RANDOM % 20 + 1))
"
