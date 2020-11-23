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


function Doublet()
{
num=$1
        for ((counter=1; counter <= $num; counter++))
        do
                flip=$((RANDOM%4))
                combinationDictionary[$flip]=$((${combinationDictionary[$flip]} +1))
        done
        SingHHProb=$(( (${combinationDictionary[0]}*100) / $num ))
        SingTTProb=$(( (${combinationDictionary[1]}*100) / $num ))
        SingHTProb=$(( (${combinationDictionary[2]}*100) / $num ))
        SingTHProb=$(( (${combinationDictionary[3]}*100) / $num ))


        if (( $SingHHProb >= $SingTTProb && $SingHHProb >= $SingTHProb && $SingHHProb >= $SingHTProb ))
        then
                echo "$SingHHProb %"
        elif (( $SingTTProb >= $SingHHProb && $SingTTProb >= $SingTHProb && $SingTTProb >= $SingHTProb ))
        then
                echo "TT = $SingTTProb %"
        elif (( $SingTHProb >= $SingTTProb && $SingTHProb >= $SingHHProb && $SingTHProb >= $SingHTProb ))
        then
                echo "TH = $SignTHProb %"
        else
                echo "HT = $SignHTProb %"

        fi

        echo "HH: ${combinationDictionary[0]} TT: ${combinationDictionary[1]}  HT : ${combinationDictionary[2]}   TH : ${combinationDictionary[3]}"
