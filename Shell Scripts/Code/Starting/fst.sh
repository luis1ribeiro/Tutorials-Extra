#!/bin/bash

declare -r NUM1=5 #Declare a constant
num2=4

	# Use arithmetic expansion for adding
	num3=$((NUM1+num2))
	num4=$((NUM1-num2))
	num5=$((NUM1*num2))
	num6=$((NUM1/num2))

	# Place variables in strings with $
	echo "5 + 4 = $num3"
	echo "5 - 4 = $num4"
	echo "5 * 4 = $num5"
	echo "5 / 4 = $num6"
	echo $(( 5**2 ))
	echo $(( 5%4 ))

	# Assignment operators allow for shorthand arithmetic
	# +=, -=, *=, /=
	rand=5
	let rand+=4
	echo "$rand"

	# Shorthand increment and decrement
	echo "rand++ = $(( rand++ ))"
	echo "++rand = $(( ++rand ))"
	echo "rand-- = $(( rand-- ))"
	echo "--rand = $(( --rand ))"
