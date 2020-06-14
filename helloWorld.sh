#!/bin/bash

case $# in
	0) echo "Hello you !!";;
	1) echo "Wow you are using arguments !! Try with more than one ;)";;
	3) echo "Yeessss 3 is the best number of arguments (or not at all I don't really know)"
		echo "PS : her is what you typed $*";;
esac

