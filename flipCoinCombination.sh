#! /bin/bash -x

echo "-------------------------------------------------------------------------WELCOME TO FLIP COIN COMBINATION-------------------------------------------------------------------------------"

#HEADS AND TAILS ARE GIVEN VALUES 1 AND 0 REPECTIVELY
HEADS=1
TAILS=0
H=0
T=0
#DICTIONARY CREATED

declare -A DICT


read -p "Enter no of times to toss the coin" num


echo  $num $flips

function coinFlip(){
for (( i=1; i<=$num; i++ ))
do
read -p "for $i combination choose 1.SINGLET 2.DOUBLET 3.TRIPLETS" flips
str=""
for (( j=1; j<=$flips; j++ ))
do
random=$(( RANDOM % 2 ))
if [ $random -eq 1 ]
then
str=$str"H"
else
str=$str"T"
fi
done
echo  $str
DICT[$str]=$(( DICT[$str] + 1 ))
done
}

coinFlip

echo $(printf "%s\n" ${!DICT[@]} : ${DICT[@]} | sort -n)
