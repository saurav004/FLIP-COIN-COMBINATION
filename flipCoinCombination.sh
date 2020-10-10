#! /bin/bash -x

echo "-------------------------------------------------------------------------WELCOME TO FLIP COIN COMBINATION--------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0

#DICTIONARY CREATED
declare -A DICT

read -p "Enter no of times to toss the coin" num

flips=2
function coinFlip() {
for (( i=1; i<=$num; i++ ))
do
str=""
 for(( j=0; j<$flips; j++ ))
 do
   random=$(( RANDOM % 2 ))
	if [ $random -eq 1 ]
	then
	   str=$str"H"
	else
            str=$str"T"
	fi
  done
echo $str
DICT["$str"]=$(( $((DICT["$str"])) + 1 ))
done
}

coinFlip
echo "${!DICT[@]} : ${DICT[@]}"

for i in ${!DICT[@]}
do
	store=$(($((DICT[$i]))*100))
	percentage=$(($store/$num))
	echo "occurance percentage of $i:$percentage"
done

