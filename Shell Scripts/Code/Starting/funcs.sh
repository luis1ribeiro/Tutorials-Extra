#!/bin/bash
 	# Define function

 	getDate() {

 		# Get current date and time
 		date

 		# Return returns an exit status number between 0 - 255
 		return
 	}

 	getDate

 	# This is a global variable
 	name="Luisinho"

 	# Local variable values aren't available outside of the function
 	demLocal() {
 		local name="zé"
 		return
 	}

 	demLocal

 	echo "$name"

 	# A function that receives 2 values and prints a sum
 	getSum() {

 		# Attributes are retrieved by referring to $1, $2, etc.
 		local num3=$1 #1º argumento
 		local num4=$2 #2º argumento

 		# Sum values
 		local sum=$((num3+num4))

 		# Pass values back with echo
 		echo $sum
 	}

 	num1=5
 	num2=6

 	# You pass atributes by separating them with a space
 	# Surround function call with $() to get the return value
 	sum=$(getSum num1 num2)
 	echo "The sum is $sum"
