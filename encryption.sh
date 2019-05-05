#!/bin/bash

superincreasing=0 #flag to check whether the simple knapsack is superincreasing or not

while [ $superincreasing -eq 0 ]; do

	#take simple knapsack input

	read -p "Enter the size of the simple knapsack: " simpleKnapsackSize

	for ((i=0; i<${simpleKnapsackSize}; i++)); do

		read -p "Enter the superincreasing simple knapsack [$i] : " simpleKnapsackValue 

		#add value to array
		simpleKnapsack=( "${simpleKnapsack[@]}" $simpleKnapsackValue )

	done

	####echo ${simpleKnapsack[@]}

	#ensure that simple knapsack is superincreasing

	for (( i=0,previousValuesSum=0; i<${simpleKnapsackSize}; i++ )); do

		if [ ${simpleKnapsack[i]} -gt ${previousValuesSum} ]; then # the array is superincreasing till now
			echo " i is $i"
			echo "prev is $previousValuesSum "
			#add current value to previousValuesSum
			(( previousValuesSum+=simpleKnapsack[i] ))
			####echo "inside if"
			####echo "prev is $previousValuesSum "
		else
			echo "Simple knapsack should be superincreasing.."
			break
		fi	
	
		#if end of array reached, it's superincreasing
		if [ $i -eq $(( simpleKnapsackSize - 1 )) ]; then
			echo " Simple knapsack is superincreasing .. "
			superincreasing=1
		fi

	done #end if do

done # end while do

#take w : w in [1, S sum]

read -p "Enter w in range [1, $previousValuesSum] : " w 

#ensure that w in [1, S sum]

#if [ $w in [1..$previousValuesSum] ]; then
#if [[ $w -le 1 -o $w -ge $previousValuesSum ]]; then
if [ $w -le 1 -o $w -ge $previousValuesSum ]; then
	echo " Not in range!"
fi


#take n : n > S sum and n is prime

#ensure that n > S sum and n is prime

#take the binary plain msg

#ensure that msg is binary

#generate hard knapsack (public key)

#### Encryption ####


