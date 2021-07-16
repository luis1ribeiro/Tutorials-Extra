	#!/bin/bash

	read -p "Enter 2 Numbers to Sum : " num1 num2

	sum=$((num1+num2))

	echo "$num1 + $num2 = $sum"

	# Hide the input with the s code
	read -sp "Enter the Secret Code" secret

	if [ "$secret" == "password" ]; then
		echo "Enter"
	else
		echo "Wrong Password"
	fi

	#Set what separates the values with IFS

		# Store the original value of IFS
	OIFS="$IFS"

	# Set what separates the input values
	IFS=","

	read -p "Enter 2 numbers to add separated by a comma" num1 num2

	# Use the parameter expansion ${} to substitute any whitespace
	# with nothing
	num1=${num1//[[:blank:]]/}
	num2=${num2//[[:blank:]]/}

	sum=$((num1+num2))

	echo "$num1 + $num2 = $sum"

	# Reset IFS to the original value
	IFS="$OIFS"

	# Parameter expansion allows you to do this
	name="Luis"
	echo "${name}'s Toy"

	# The search and replace allows this
	samp_string="The dog climbed the tree"
	echo "${samp_string//dog/cat}"

	# You can assign a default value if it doesn't exist
	echo "I am ${name:-Luis}"

	# This uses the default if it doesn't exist and assigns the value
	# to the variable
	echo "I am ${name:=Luis}"
	echo $name
