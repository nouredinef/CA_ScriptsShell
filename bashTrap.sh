#!/bin/bash

echo "Weclcome to the script to test the trap command"
echo
echo "You are running $0"
echo
echo "Here are all signal types (kill -l) :"
echo
echo $(kill -l)
echo
echo

trap sayBooh SIGINT SIGTERM

echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C if you are brave enough"

function sayBooh {
	echo
	echo BOOOOOOOOOOH!!!
	echo
}

while true
do 
	sleep 100
done


