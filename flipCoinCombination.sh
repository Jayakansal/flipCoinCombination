#! /bin/bash

echo -e "1: For Singlet \n2: For Doublet \n3: For Triplet"
declare -A combinationDictionary

function singlet()
{
num=$1
        for ((counter=1; counter <= $num; counter++))
        do
                flip=$((RANDOM%2))
                combinationDictionary[$flip]=$((${combinationDictionary[$flip]} +1))

done
singHeadProb=$(( (${combinationDictionary[0]}*100) / $num ))
singTailProb=$(( (${combinationDictionary[1]}*100) / $num ))


if (( $singHeadProb > $singTailProb ))
then
        echo "Head"
        echo "Head = $singHeadProb %"
else
        echo "Tail"
        echo "Tail = $singTailProb %"
fi

        echo "Head: ${combinationDictionary[0]} Tail: ${singletDictionary[1]}"


