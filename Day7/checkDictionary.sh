#!/usr/local/bin/bash -x

declare -A face_value
read -p "Enter how many time you want to roll a dice: " rollDiceTimes
isRoll=0
roll=$(( RANDOM%6 + 1 ))
FACE_ONE=1
ACE_TWO=2
FACE_THREE=3
FACE_FOUR=4
FACE_FIVE=5
FACE_SIX=6

while [[ isRoll -lt rollDiceTimes ]]
do 
	roll=$(( RANDOM%6 + 1 ))
	case $roll in
		$FACE_ONE)
			face="one"
			;;
		$FACE_TWO)
			face="two"
			;;
		$FACE_THREE)
			face="three"
			;;
		$FACE_FOUR)
			face="four"
			;;
		$FACE_FIVE)
			face="five"
			;;
		$FACE_SIX)
			face="six"
			;;
		*)
			face="Unpredictable Situation"
	esac
	face_value[$face]=$roll
	echo $face
	isRoll=$(( $isRoll + 1 ))
done 

echo "${face_value[@]}"
