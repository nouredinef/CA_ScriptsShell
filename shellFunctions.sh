#!/bin/bash

#This script is used to show how shell functions works


echo "Welcome to the Shell Functions scripts. You are running $0"
echo 


function Calc_Eng {
	echo "You used the English Calcultator"
	if [ $# = 0 ] ; then
		echo "You should add the opertation desired '3 plus 2' for example"
	elif [ "$2" = "plus" ] ; then
		echo "$1 + $3 = $(($1+$3))"
	elif [ "$2" = "minus" ] ; then
		echo "$1 - $3 = $(($1-$3))"
	elif [ "$2" = "times" ] ; then
		echo "$1 * $3 = $(($1*$3))"
	else
		echo "$2 not implemented yet"
	fi

}

function Calc_Fre {
	echo "You used the French Calculator"
	if [ $# = 0 ] ; then
		echo "You should add the opertation desired '3 plus 2' for example"
	elif [ $2 = "plus" ] ; then
		echo "$1 + $3 = $(($1+$3))"
	elif [ $2 = "moins" ] ; then
		echo "$1 - $3 = $(($1-$3))"
	elif [ $2 = "fois" ] ; then
		echo "$1 * $3 = $(($1*$3))"
	else
		echo "$2 not implemented yet"
	fi

}

function Help {
	echo "Help"

	if [ $# = 0 ] ; then
		echo "Type the name of the function as argument for help"
	elif [ $1 = "Calc_Eng" ] ; then
		echo "This is the help for Calc_Eng"
		echo "You can type 'Calc_Eng 3 minus 2' as arguments to print the output '3-2=1'"
	elif [ $1 = "Calc_Fre" ] ; then
		echo "This is the help for Calc_Eng"
		echo "You can type 'Calc_Fre 3 moins 2' as arguments to print the output '3-2=1'"
	fi

}

if [ $# = 0 ] ; then
	echo "You should put the name of the desired function as an argument."
	echo
	echo "Available function(s) are :"
	echo "1. Calc_Eng : simple calculator in english"
	echo "2. Calc_Fre : simple calculator in french"
	echo "3. Help : help for the functions"
elif [ $1 = "Help" ] ; then
	Help $2
elif [ $1 = "Calc_Eng" ] ; then
	Calc_Eng $2 $3 $4
elif [ $1 = "Calc_Fre" ] ; then
	Calc_Fre $2 $3 $4
fi

