#! /bin/bash -x

echo "-------------------------------------------------------------------------WELCOME TO FLIP COIN COMBINATION--------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0
coinSaid=$((RANDOM%2))

#CHECKING IF HEAD WON OR TAIL WON 

if [ $coinSaid == $HEADS ]
then
echo "HEADS WON!!!!!!"
else
echo "TAILS WON!!!!!!"
fi
