#!/usr/bin/ksh

echo Welcome to Guessing game "

function ask ()
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "very low."
	else
		echo "very high."
	fi
	ask
done

echo "Great! it's a correct answer, here is the list of files:"
echo "---" && ls -1
