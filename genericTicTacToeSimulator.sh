#!/bin/bash -x
echo "********************Welcome to TicTacToe Simulation Problem********************"

declare -a board

#CONSTANTS
readonly BOARDSIZE=$1
ROWSIZE=$BOARDSIZE
COLUMNSIZE=$ROWSIZE
PLAYER=1

#VARIABLES
randomCheck=$(($RANDOM%2))

#function is used to Start fresh by resetting the board
function resetBoard(){
	for ((row=1;row<=$ROWSIZE;row++))
	do
		for ((column=1;column<=$COLUMNSIZE;column++))
		do
			board[$row,$column]="-"
		done
			echo ${board[@]}
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

resetBoard
assignSymbols
checkTurn
