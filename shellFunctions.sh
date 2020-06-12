#!/bin/bash

#This script is used to show how shell functions works


echo "Welcome to the Shell Functions scripts. You are running $0"
echo 
echo "Available function(s) are :"
echo "1. Calc_Eng : simple calculator in english"
echo "2. Calc_Fre : simple calculator in french"
echo "3. Help : help for the functions"


function Calc_Eng {
	echo "You used the English Calcultator"

}

function Calc_Fre {
	echo "You used the French Calculator"

}

function Help {
	echo "Help"

	if [ $# = 0 ] ; then
		echo "type the name of the function as argument for help"
	fi

}


Help


