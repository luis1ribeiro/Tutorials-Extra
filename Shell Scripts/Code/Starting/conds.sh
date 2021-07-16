	#!/bin/bash

	# You can use read to receive input which is stored in name
	# The p option says that we want to prompt with a string
  	read -p "What is your name? " name
  	echo "Hello $name"

  	read -p "How old are you? " age

  	# You place your condition with in []
  	# Include a space after [ and before ]
  	# Integer Comparisons: eq, ne, le, lt, ge, gt
  	if [ $age -ge 16 ]
  	then
  		echo "You can drive"

  	# Check another condition
  	elif [ $age -eq 15 ]
  	then
  		echo "You can drive next year"

  	# Executed by default
 	else
 	  echo "You can't drive"

 	# Closes the if statement
 	fi

 	#Extended integer test

 	read -p "Enter a number : " num

 	if ((num == 10)); then
 		echo "Your number equals 10"
 	fi

 	if ((num > 10)); then
 		echo "It is greater then 10"
 	else
 		echo "It is less then 10"
 	fi

 	if (( ((num % 2)) == 0 )); then
 		echo " It is even"
 	fi

 	# You can use logical operators like &&, || and !
 	if (( ((num > 0)) && ((num < 11)) )); then
 		echo "$num is between 1 and 10"
 	fi

 	# && and || can be used as control structures

 	# Create a file and then if that worked open it in Vim
 	#touch samp_file && vim samp_file

 	# If samp_dir doesn't exist make it
  #[ -d samp_dir ] || mkdir samp_dir

 	# Delete file rm samp_file
 	# Delete directory rmdir samp_dir

  #3. Testing strings

	str1=""
	str2="Sad"
	str3="Happy"

	# Test if a string is null
	if [ "$str1" ]; then
		echo "$str1 is not null"
	fi

	if [ -z "$str1" ]; then
		echo "str1 has no value"
	fi

	# Check for equality
	if [ "$str2" == "$str3" ]; then
		echo "$str2 equals $str3"
	elif [ "$str2" != "$str3" ]; then
		echo "$str2 is not equal to $str3"
	fi

	if [ "$str2" > "$str3" ]; then
		echo "$str2 is greater then $str3"
	elif [ "$str2" < "$str3" ]; then
		echo "$str2 is less then $str3"
	fi
