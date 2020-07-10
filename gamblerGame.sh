#!/bin/bash -x

# Welcome Message
echo "Welcome to the world of Gambling."
 
# Assign variables and add values(Money).
stakeMoneyPerDay=100;
betMoneyPerGame=1;

# Added variables for adding a limit for minimum money loose and maximum money wins.
maxMoneyWinPerDay=150;
minMoneyLoosePerDay=50;
moneyEarns=$((stakeMoneyPerDay));

# Apply while condition and checks the condition connects or not
while [[ $moneyEarns -le $maxMoneyWinPerDay && $moneyEarns -ge $minMoneyLoosePerDay ]]
do
	gameResult=$(($RANDOM%2));

	# Apply if condition and if Gamble wins or loose.
	if [[ $gameResult -eq 1 ]]
	then
		echo "Gambler Win"
		((moneyEarns++));
	else
		echo "Gambler loose"
		((moneyEarns--));
	fi
done

#End of Use Case 03
