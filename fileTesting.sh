#!/bin/bash

echo " Welcome to the File Testing Script"
echo " You are running the script $0"

for file in $(ls -a) ; do
	echo "------------------------------"
	echo "Testing file: $file"
	echo
	if [ -e $file ] ; then
		echo "-e test passed for file $file"
	else
		echo "-e test NOT passed for file $file"
	fi

	if [ -d $file ] ; then
		echo "-d test passed for file $file"
	else
		echo "-d test NOT passed for file $file"
	fi

	if [ -f $file ] ; then
		echo "-f test passed for file $file"
	else
		echo "-f test NOT passed for file $file"
	fi

	if [ -r $file ] ; then
		echo "-r test passed for file $file"
	else
		echo "-r test NOT passed for file $file"
	fi
done
