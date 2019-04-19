#!/bin/bash

#take simple knapsack input

read -p "Enter the size of the simple knapsack: " simpleKnapsackSize

for (( i=0 ; i<${simpleKnapsackSize}; i++ )); do

read -p "" simpleKnapsackValue 

simpleKnapsack=("${simpleKnapsack[@]}" $simpleKnapsackValue)

done

echo ${simpleKnapsack[@]}

#ensure that simple knapsack is superincreasing

#calculate S sum

#take w : w in [1, S sum]

#ensure that w in [1, S sum]

#take n : n > S sum and n is prime

#ensure that n > S sum and n is prime

#take the binary plain msg

#ensure that msg is binary

#generate hard knapsack (public key)

#### Encryption ####


