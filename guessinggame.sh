#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera

count=$(ls -1 | wc -l)

function validation {
	if [[ $guess -lt $count ]]
	then 
		echo "Your guess is too low"
	elif [[ $guess -gt $count ]]
	then 
		echo "Your guess is too high"
	else 
		echo "Congratulations! You guessed correctly."
	fi
}
while [[ $count -ne $guess ]]
do
    read -p "Guess how many files are in the current directory? " guess
    echo "You entered: $guess"
    echo $(validation $guess $count)
    echo ""
done
