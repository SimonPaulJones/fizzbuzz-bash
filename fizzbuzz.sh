#!/bin/bash

if [ "$#" -ne 2 ] || ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please provide two integers."
    exit 1
fi

start=$1
end=$2

if [ "$start" -gt "$end" ]; then
    for ((i=$start; i>=$end; i--)); do
        if (( i % 3 == 0 && i % 5 == 0 )); then
            echo "FizzBuzz"
        elif (( i % 3 == 0 )); then
            echo "Fizz"
        elif (( i % 5 == 0 )); then
            echo "Buzz"
        else
            echo "$i"
        fi
    done
else
    for ((i=$start; i<=$end; i++)); do
        if (( i % 3 == 0 && i % 5 == 0 )); then
            echo "FizzBuzz"
        elif (( i % 3 == 0 )); then
            echo "Fizz"
        elif (( i % 5 == 0 )); then
            echo "Buzz"
        else
            echo "$i"
        fi
    done
fi
