#!/bin/bash

roman_to_int() {
    local roman=$(echo "$1" | tr '[:lower:]' '[:upper:]')
    declare -A value=([I]=1 [V]=5 [X]=10 [L]=50 [C]=100 [D]=500 [M]=1000)
    local total=0
    local prev=0
    if [[ ! "$roman" =~ ^[IVXLCDM]+$ ]]; then
        echo "Error: Invalid Roman numeral"
        return 1
    fi

    for ((i=${#roman}-1; i>=0; i--)); do
        local char="${roman:$i:1}"
        local current=${value[$char]}
        if (( current < prev )); then
            ((total-=current))
        else
            ((total+=current))
        fi
        prev=$current
    done

    echo "$total"
}

int_to_roman() {
    local num=$1
    if (( num <= 0 || num > 3999 )); then
        echo "Error: Number must be between 1 and 3999"
        return 1
    fi

    local roman=""
    local values=(1000 900 500 400 100 90 50 40 10 9 5 4 1)
    local numerals=(M CM D CD C XC L XL X IX V IV I)
    for ((i=0; i<${#values[@]}; i++)); do
        while (( num >= values[i] )); do
            roman+="${numerals[i]}"
            ((num -= values[i]))
        done
    done

    echo "$roman"
}

if [ $# -ne 1 ]; then
    echo "Usage: romara <roman_numeral | number>"
    exit 1
fi

input="$1"

if [[ "$input" =~ ^[0-9]+$ ]]; then
    int_to_roman "$input"
elif [[ "$input" =~ ^[IVXLCDMivxlcdm]+$ ]]; then
    roman_to_int "$input"
else
    echo "Error: Mixed or invalid input"
    exit 1
fi

