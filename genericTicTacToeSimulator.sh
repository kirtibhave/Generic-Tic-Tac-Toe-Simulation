#!/bin/bash -x
echo "********************Welcome to TicTacToe Simulation Problem********************"

declare -a board

#CONSTANTS
readonly BOARDSIZE=$1
ROWSIZE=$BOARDSIZE
COLUMNSIZE=$ROWSIZE

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

resetBoard
