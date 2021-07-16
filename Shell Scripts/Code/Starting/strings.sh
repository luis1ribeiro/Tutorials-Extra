#!/bin/bash

	rand_str="A random string"

	# Get string length
	echo "String Length : ${#rand_str}"

	# Get string slice starting at index (0 index)
	echo "${rand_str:2}"

	# Get string with starting and ending index
	echo "${rand_str:2:7}"

	# Return whats left after A
	echo "${rand_str#*A }"
