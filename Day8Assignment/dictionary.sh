#!/usr/local/bin/bash -x

declare -A face_value
declare -A Occurance
declare -A MaxMin
isRoll=0
roll=$(( RANDOM%6 + 1 ))
FACE_ONE=1
FACE_TWO=2
FACE_THREE=3
FACE_FOUR=4
FACE_FIVE=5
FACE_SIX=6
max=0
min=0

while [[ Occurance[@] -lt 10 ]]
do 
	roll=$(( RANDOM%6 + 1 ))
	case $roll in
		$FACE_ONE)
			face="one"
			Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c1 ]]
			then 
				max=$c1
				MaxMin["Max"]="one"
			elif [[ $min -gt $c1 ]]
			then
				min=$c1
				MaxMin["Min"]="one"
			fi
			;;
		$FACE_TWO)
			face="two"
         Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c2 ]]
         then 
            max=$c1
            MaxMin["Max"]="two"
			elif [[ $min -gt $c2 ]]
         then
            min=$c2
            MaxMin["Min"]="two"
         fi
			;;
		$FACE_THREE)
			face="three"
         Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c3 ]]
         then
            max=$c3
            MaxMin["Max"]="three"
         elif [[ $min -gt $c3 ]]
         then
            min=$c3
            MaxMin["Min"]="three"
         fi
			;;
		$FACE_FOUR)
			face="four"
         Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c4 ]]
         then
            max=$c4
            MaxMin["Max"]="four"
         elif [[ $min -gt $c4 ]]
         then
            min=$c4
            MaxMin["Min"]="four"
         fi
			;;
		$FACE_FIVE)
			face="five"
         Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c5 ]]
         then
            max=$c5
            MaxMin["Max"]="five"
         elif [[ $min -gt $c5 ]]
         then
            min=$c5
            MaxMin["Min"]="five"
         fi
			;;
		$FACE_SIX)
			face="six"
         Occurance[face]=Occurance[face]+1
			if [[ $max -lt $c6 ]]
         then
            max=$c6
            MaxMin["Max"]="six"
         elif [[ $min -gt $c6 ]]
         then
            min=$c6
            MaxMin["Min"]="six"
         fi
			;;
		*)
			face="Unpredictable Situation"
	esac
	face_value[$face]=$roll
	echo $face
	isRoll=$(( $isRoll + 1 ))
done 

echo "${face_value[@]}"
echo maximum occurances: ${MaxMin["Max"]}
echo minimum occurances: ${MaxMin["Min"]}
