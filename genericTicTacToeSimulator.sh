#!/bin/bash -x
echo "********************Welcome to TicTacToe Simulation Problem********************"

declare -A board

#CONSTANTS
readonly BOARDSIZE=$1
ROWSIZE=$BOARDSIZE
COLUMNSIZE=$ROWSIZE
PLAYER=1
MAX_POSITION=$ROWSIZE*$COLUMNSIZE

#VARIABLES
randomCheck=$(($RANDOM%2))
count=1

#function is used to Start fresh by resetting the board
function resetBoard(){
	for ((row=1;row<=$ROWSIZE;row++))
	do
		for ((column=1;column<=$COLUMNSIZE;column++))
		do
			board[$row,$column]="-"
		done
	done
}

#function is used to assign the letters to a player
function assignSymbols(){
	if [ $randomCheck -eq $PLAYER ]
	then
		sign="X"
	else
		sign="O"
	fi
}

#function is used to check who playes first
function checkTurn(){
	if [ $randomCheck -eq $PLAYER ]
	then
		echo "player will be played first"
	else
		echo "player will be played first"
	fi
}

#function is used to display game board
function displayBoard(){
	for ((row=1;row<=$ROWSIZE;row++))
	do
		for ((column=1;column<=$COLUMNSIZE;column++))
		do
			printf "| ${board[$row,$column]} |"
		done
			printf "\n"
	done
}


#to take input from user and to choose valid cells
function userInput(){
	read -p "enter row & column number to insert value" rowNumber columnNumber
		if [[ ${board[$rowNumber,$columnNumber]} == "-" ]]
		then
			board[$rowNumber,$columnNumber]=$sign
			displayBoard
			((count++))
		else
			echo "OOPS! Position is occupied" 
		fi
}

resetBoard
assignSymbols
checkTurn

while [[ $count -le $MAX_POSITION ]]
do
	userInput
done

