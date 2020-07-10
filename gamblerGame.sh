#!/bin/bash -x

echo "Welcome to the world of Gambling."

stakeMoneyPerDay=100;
betMoneyPerGame=1;

gameResult=$(($RANDOM%2))

if [[ $gameResult -eq 1 ]]
then
	echo "Gambler Win"
	moneyEarns=$(($stakeMoneyPerDay+1))
else
	echo "Gambler loose"
	moneyEarns=$(($stakeMoneyPerDay-1))
fi
