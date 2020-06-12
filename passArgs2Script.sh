#!/bin/bash

#This script shows how to handle arguments

echo "Welcome in the script $0"
echo "-----------------"
echo "You have entered $# arguments."
echo 
echo "Here is a list of all the arguments :"
echo "$@"
echo
echo

for args in $@ ; do
	if [ $args = "secret" ] ; then
		echo "**********************************"
		echo "*You found the secret argument !!*"
		echo "**********************************"
	fi
done
