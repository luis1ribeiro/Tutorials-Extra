	#!/bin/bash

	read -p "How old are you : " age

	# Check the value of age
	case $age in

	# Match numbers 0 - 4
	[0-4])
		echo "To young for school"
		;; # Stop checking further

	# Match only 5
	5)
		echo "Go to kindergarten"
		;;

	# Check 6 - 18
	[6-9]|1[0-8])
		grade=$((age-5))
		echo "Go to grade $grade"
		;;

	# Default action
	*)
		echo "You are to old for school"
		;;
	esac # End case


	can_vote=0
	#age=18

	((age>=18?(can_vote=1):(can_vote=0)))
	echo "Can Vote : $can_vote"
