#! /bin/bash -x

echo "-------------------------------------------------------------------------WELCOME TO FLIP COIN COMBINATION--------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0

#DICTIONARY CREATED
declare -A DICT

read -p "Enter no of times to toss the coin" num

for ((i=0; i<$num; i++))
do
	coinSaid=$((RANDOM%2))
	if [ $coinSaid == $HEADS ]
	then
		DICT[$HEADS]=$((DICT[$HEADS]+1))
	else
		DICT[$TAILS]=$((DICT[$TAILS]+1))
	fi
done

percentH=$(($((DICT[$HEADS]))*100))
percentHeads=$(($percentH/$num))
percentT=$(($((DICT[$TAILS]))*100))
percentTails=$(($percentT/$num))
echo ${DICT[@]}
echo "Head percent=$percentHeads % and Tails percent = $percentTails % "
